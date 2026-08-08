document.addEventListener('DOMContentLoaded', async () => {
    setTimeout(async () => {
        const { data: { session } } = await supabase.auth.getSession();
        
        if (!session) {
            window.location.href = '/';
            return;
        }

        const user = session.user;

        // Check if user is faculty
        const { data: profile, error } = await supabase
            .from('profiles')
            .select('role')
            .eq('id', user.id)
            .single();

        if (error || profile.role !== 'faculty') {
            document.getElementById('access-denied').style.display = 'flex';
            return;
        }

        // Is Faculty
        document.getElementById('faculty-main').style.display = 'block';
        loadStudentInsights();
        loadSubjectsDropdown();
        
    }, 500);
});

async function addSubject() {
    const id = document.getElementById('admin-sub-id').value.trim().toLowerCase();
    const name = document.getElementById('admin-sub-name').value.trim();
    const branch = document.getElementById('admin-sub-branch').value;
    const sem = parseInt(document.getElementById('admin-sub-sem').value);
    const msgEl = document.getElementById('admin-msg');

    if (!id || !name) {
        msgEl.style.display = 'block';
        msgEl.style.color = '#ff4d4d';
        msgEl.textContent = 'Please provide both an ID and Display Name.';
        return;
    }

    try {
        const { error } = await supabase
            .from('subjects')
            .insert({
                name: id,
                display_name: name,
                branch: branch,
                semester: sem
            });

        if (error) {
            if (error.code === '23505') throw new Error("Subject ID already exists.");
            throw error;
        }

        msgEl.style.display = 'block';
        msgEl.style.color = '#10b981'; // Green
        msgEl.textContent = 'Successfully added subject: ' + name;
        
        // Reset form
        document.getElementById('admin-sub-id').value = '';
        document.getElementById('admin-sub-name').value = '';

    } catch (err) {
        msgEl.style.display = 'block';
        msgEl.style.color = '#ff4d4d';
        msgEl.textContent = err.message;
    }
}

async function loadStudentInsights() {
    const container = document.getElementById('insights-container');
    const branchFilter = document.getElementById('filter-branch').value;
    
    container.innerHTML = '<p style="color: rgba(255,255,255,0.5);">Loading insights...</p>';

    try {
        let query = supabase.from('profiles').select('id, full_name, branch, semester, total_xp').order('total_xp', { ascending: false });
        if (branchFilter !== 'All') {
            query = query.eq('branch', branchFilter);
        }

        const { data: students, error } = await query;
        if (error) throw error;

        if (students.length === 0) {
            container.innerHTML = '<p style="color: rgba(255,255,255,0.5);">No students found.</p>';
            return;
        }

        let html = '';
        students.forEach(s => {
            const isLagging = s.total_xp < 50; // Arbitrary threshold for demo
            
            html += `
                <div style="background: rgba(15,23,42,0.6); padding: 1rem; border-radius: 8px; margin-bottom: 10px; display: flex; justify-content: space-between; align-items: center; border-left: 4px solid ${isLagging ? '#ef4444' : '#10b981'};">
                    <div>
                        <div style="font-weight: 600; color: white;">${s.full_name || 'Anonymous'}</div>
                        <div style="font-size: 0.85rem; color: var(--text-secondary);">${s.branch} | Sem ${s.semester}</div>
                    </div>
                    <div style="text-align: right;">
                        <div style="font-size: 1.2rem; font-weight: 800; color: #06b6d4;">${s.total_xp || 0} XP</div>
                        ${isLagging ? '<span style="font-size: 0.75rem; color: #ef4444; background: rgba(239,68,68,0.1); padding: 2px 6px; border-radius: 4px;">Needs Attention</span>' : ''}
                    </div>
                </div>
            `;
        });

        container.innerHTML = html;
    } catch (err) {
        container.innerHTML = `<p style="color: #ff4d4d;">Error loading insights.</p>`;
        console.error(err);
    }
}

async function loadSubjectsDropdown() {
    const dropdown = document.getElementById('admin-q-subject');
    try {
        const { data: subjects, error } = await supabase
            .from('subjects')
            .select('name, display_name');
            
        if (error) throw error;
        
        if (subjects.length === 0) {
            dropdown.innerHTML = '<option value="" disabled selected>No subjects available</option>';
            return;
        }
        
        let html = '<option value="" disabled selected>Select a Subject</option>';
        subjects.forEach(sub => {
            html += `<option value="${sub.name}">${sub.display_name} (${sub.name})</option>`;
        });
        dropdown.innerHTML = html;
    } catch (err) {
        console.error("Failed to load subjects", err);
        dropdown.innerHTML = '<option value="" disabled selected>Error loading subjects</option>';
    }
}

async function submitNewQuestion() {
    const subject = document.getElementById('admin-q-subject').value;
    const text = document.getElementById('admin-q-text').value.trim();
    const optA = document.getElementById('admin-q-optA').value.trim();
    const optB = document.getElementById('admin-q-optB').value.trim();
    const optC = document.getElementById('admin-q-optC').value.trim();
    const optD = document.getElementById('admin-q-optD').value.trim();
    const correctVal = document.getElementById('admin-q-correct').value;
    const msgEl = document.getElementById('admin-q-msg');

    if (!subject || !text || !optA || !optB || !optC || !optD || correctVal === "") {
        msgEl.style.display = 'block';
        msgEl.style.color = '#ff4d4d';
        msgEl.textContent = 'Please fill out all fields and select a correct answer.';
        return;
    }

    try {
        const optionsArray = [optA, optB, optC, optD];
        const correctIndex = parseInt(correctVal);

        const { error } = await supabase
            .from('questions')
            .insert({
                subject: subject,
                question: text,
                options: optionsArray,
                correct_index: correctIndex
            });

        if (error) throw error;

        msgEl.style.display = 'block';
        msgEl.style.color = '#10b981';
        msgEl.textContent = 'Successfully added new question!';
        
        // Clear fields
        document.getElementById('admin-q-text').value = '';
        document.getElementById('admin-q-optA').value = '';
        document.getElementById('admin-q-optB').value = '';
        document.getElementById('admin-q-optC').value = '';
        document.getElementById('admin-q-optD').value = '';
        document.getElementById('admin-q-correct').value = '';

        // Hide success message after 3 seconds
        setTimeout(() => { msgEl.style.display = 'none'; }, 3000);

    } catch (err) {
        msgEl.style.display = 'block';
        msgEl.style.color = '#ff4d4d';
        msgEl.textContent = err.message;
    }
}
