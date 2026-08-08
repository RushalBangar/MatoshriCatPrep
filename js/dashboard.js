document.addEventListener('DOMContentLoaded', async () => {
    // Wait slightly to ensure auth state is loaded from auth.js if they load concurrently
    setTimeout(async () => {
        const { data: { session } } = await supabase.auth.getSession();
        
        if (!session) {
            // Not logged in, redirect to home
            window.location.href = '/';
            return;
        }

        const user = session.user;
        document.getElementById('dash-name').textContent = user.user_metadata.full_name || 'Student';

        // Fetch Profile
        const { data: profile, error } = await supabase
            .from('profiles')
            .select('*')
            .eq('id', user.id)
            .single();

        if (error) {
            console.error("Error fetching profile:", error);
            return;
        }

        if (!profile.branch || !profile.semester) {
            // Force setup
            openProfileSetupModal();
        } else {
            // Display Profile Info
            document.getElementById('dash-info').textContent = `Branch: ${profile.branch} | Semester: ${profile.semester}`;
            document.getElementById('dash-xp').textContent = `${profile.total_xp || 0} XP`;
            
            // Fetch relevant subjects
            loadSubjects(profile.branch, profile.semester);
            
            // Load Analytics & Leaderboard
            loadAnalytics(user.id);
            loadLeaderboard(profile.branch);
        }
    }, 500);
});

function openProfileSetupModal() {
    document.getElementById('profile-modal-overlay').style.display = 'flex';
}

async function saveProfile() {
    const branch = document.getElementById('profile-branch').value;
    const sem = document.getElementById('profile-sem').value;
    const errorEl = document.getElementById('profile-error');
    const btn = document.getElementById('save-profile-btn');

    if (!branch || !sem) {
        errorEl.textContent = "Please select both Branch and Semester.";
        errorEl.style.display = 'block';
        return;
    }

    errorEl.style.display = 'none';
    btn.textContent = 'Saving...';
    btn.disabled = true;

    try {
        const { data: { user } } = await supabase.auth.getUser();
        
        const { error } = await supabase
            .from('profiles')
            .update({ branch: branch, semester: parseInt(sem) })
            .eq('id', user.id);

        if (error) throw error;

        // Reload page to apply changes
        window.location.reload();
    } catch (err) {
        errorEl.textContent = err.message;
        errorEl.style.display = 'block';
        btn.textContent = 'Save Profile';
        btn.disabled = false;
    }
}

async function loadSubjects(branch, semester) {
    const container = document.getElementById('subjects-container');
    
    // Fetch subjects that match the semester, and either match the branch or are 'All'
    const { data: subjects, error } = await supabase
        .from('subjects')
        .select('*')
        .eq('semester', semester)
        .or(`branch.eq.${branch},branch.eq.All`);

    if (error) {
        container.innerHTML = `<p style="color: #ff4d4d;">Failed to load subjects.</p>`;
        return;
    }

    if (subjects.length === 0) {
        container.innerHTML = `<p style="color: var(--text-secondary);">No subjects available for Semester ${semester} ${branch} yet.</p>`;
        return;
    }

    let html = '';
    const icons = ['📊', '💻', '⚙️', '📐', '🔬', '🔋', '🌍', '📚']; // random icons based on index
    
    subjects.forEach((sub, i) => {
        const icon = icons[i % icons.length];
        html += `
            <a class='glass-card subject-card' href='/quiz.html?subject=${sub.name}'>
                <span class="subject-icon">${icon}</span>
                <span class="subject-text">${sub.display_name}</span>
            </a>
        `;
    });

    container.innerHTML = html;
}

// --- Analytics & Gamification ---

async function loadAnalytics(userId) {
    const { data: attempts, error } = await supabase
        .from('attempts')
        .select('*')
        .eq('user_id', userId)
        .order('created_at', { ascending: true });

    if (error || !attempts || attempts.length === 0) {
        document.getElementById('progressChart').style.display = 'none';
        document.getElementById('chart-empty-state').style.display = 'block';
        renderBadges([]);
        return;
    }

    // Update passed count
    const passedQuizzes = attempts.filter(a => (a.score / a.total_questions) >= 0.4).length;
    document.getElementById('dash-passed').textContent = passedQuizzes;

    // Draw Chart
    const ctx = document.getElementById('progressChart').getContext('2d');
    
    // Format data for chart
    const labels = attempts.map((a, i) => `Attempt ${i + 1} (${a.subject.toUpperCase()})`);
    const scores = attempts.map(a => Math.round((a.score / a.total_questions) * 100));

    new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                label: 'Score Percentage (%)',
                data: scores,
                borderColor: '#06b6d4',
                backgroundColor: 'rgba(6, 182, 212, 0.2)',
                borderWidth: 3,
                pointBackgroundColor: '#f43f5e',
                pointRadius: 5,
                fill: true,
                tension: 0.4
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                y: {
                    beginAtZero: true,
                    max: 100,
                    grid: { color: 'rgba(255,255,255,0.1)' },
                    ticks: { color: '#94a3b8' }
                },
                x: {
                    grid: { display: false },
                    ticks: { color: '#94a3b8', maxRotation: 45, minRotation: 45 }
                }
            },
            plugins: {
                legend: { display: false }
            }
        }
    });

    // Render badges based on attempts
    renderBadges(attempts);
}

function renderBadges(attempts) {
    const container = document.getElementById('badges-container');
    
    // Define all badges
    const badges = [
        { id: 'first_step', title: 'First Step', description: 'Completed your first quiz.', icon: '🏆', unlocked: false },
        { id: 'on_a_roll', title: 'On a Roll', description: 'Completed 3 or more quizzes.', icon: '🔥', unlocked: false },
        { id: 'perfectionist', title: 'Perfectionist', description: 'Scored 100% on a quiz.', icon: '💯', unlocked: false },
        { id: 'speed_demon', title: 'Speed Demon', description: 'Finished a quiz in under 5 minutes with a passing score.', icon: '⚡', unlocked: false }
    ];

    // Compute unlocks
    if (attempts && attempts.length >= 1) badges[0].unlocked = true;
    if (attempts && attempts.length >= 3) badges[1].unlocked = true;
    
    if (attempts) {
        attempts.forEach(a => {
            const percentage = a.score / a.total_questions;
            if (percentage === 1) badges[2].unlocked = true;
            if (a.time_taken_seconds < 300 && percentage >= 0.4) badges[3].unlocked = true;
        });
    }

    // Render HTML
    let html = '';
    badges.forEach(b => {
        const style = b.unlocked 
            ? 'background: rgba(15,23,42,0.8); border: 1px solid rgba(6, 182, 212, 0.5); box-shadow: 0 0 10px rgba(6, 182, 212, 0.2);'
            : 'background: rgba(0,0,0,0.3); border: 1px solid rgba(255,255,255,0.05); opacity: 0.5; filter: grayscale(100%);';
        
        html += `
            <div style="width: 150px; padding: 1.5rem 1rem; border-radius: 12px; text-align: center; transition: all 0.3s ease; ${style}">
                <div style="font-size: 2.5rem; margin-bottom: 0.5rem;">${b.icon}</div>
                <div style="font-weight: 700; color: ${b.unlocked ? '#06b6d4' : 'var(--text-secondary)'}; font-size: 0.9rem;">${b.title}</div>
                <div style="font-size: 0.75rem; color: var(--text-secondary); margin-top: 5px;">${b.description}</div>
            </div>
        `;
    });

    container.innerHTML = html;
}

async function loadLeaderboard(branch) {
    const container = document.getElementById('leaderboard-container');
    
    // Fetch top 5 students in this branch
    const { data: topStudents, error } = await supabase
        .from('profiles')
        .select('full_name, total_xp')
        .eq('branch', branch)
        .order('total_xp', { ascending: false })
        .limit(5);

    if (error || !topStudents || topStudents.length === 0) {
        container.innerHTML = `<div style="padding: 2rem; text-align: center; color: rgba(255,255,255,0.5);">No data yet. Be the first!</div>`;
        return;
    }

    let html = '<ul style="list-style: none; padding: 0; margin: 0;">';
    topStudents.forEach((student, index) => {
        let badge = '';
        if (index === 0) badge = '🥇';
        else if (index === 1) badge = '🥈';
        else if (index === 2) badge = '🥉';
        else badge = `<span style="display:inline-block; width: 25px; text-align: center; color: var(--text-secondary);">${index + 1}.</span>`;

        html += `
            <li style="display: flex; justify-content: space-between; align-items: center; padding: 1rem 1.5rem; border-bottom: 1px solid rgba(255,255,255,0.05);">
                <div style="display: flex; align-items: center; gap: 10px;">
                    ${badge}
                    <span style="font-weight: 600; color: var(--text-primary);">${student.full_name || 'Anonymous'}</span>
                </div>
                <div style="color: #06b6d4; font-weight: 800;">${student.total_xp || 0} XP</div>
            </li>
        `;
    });
    html += '</ul>';

    container.innerHTML = html;
}

