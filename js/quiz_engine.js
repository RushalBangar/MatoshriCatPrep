let questions = [];
let currentQuestion = 0;
let score = 0;
let timerInterval;
let timeRemaining = 1800;
let quizInProgress = false;

const startContainer = document.getElementById("start-container");
const loadingState = document.getElementById("loading-state");
const errorState = document.getElementById("error-state");
const quizContainer = document.getElementById("quiz-container");
const scoreContainer = document.getElementById("score-container");
const questionContainer = document.getElementById("question-container");
const timerDisplay = document.getElementById("timer-display");
const nextBtn = document.getElementById("next-btn");
const progressBar = document.getElementById("progress-bar");
const progressText = document.getElementById("progress-text");
const customModalOverlay = document.getElementById('custom-modal-overlay');
const customModalTitle = document.getElementById('custom-modal-title');
const customModalMessage = document.getElementById('custom-modal-message');

function showCustomModal(title, message, callback) {
    customModalTitle.textContent = title;
    customModalMessage.textContent = message;
    customModalOverlay.style.display = 'flex';

    const btn = document.getElementById('custom-modal-btn');
    btn.onclick = () => {
        customModalOverlay.style.display = 'none';
        if (callback) callback();
    };
}

const subject = window.subjectKey || 'fds';

document.getElementById('quiz-title').innerHTML = `<span class="text-gradient">CAT ${subject.toUpperCase()} Quiz</span>`;
document.title = `CAT ${subject.toUpperCase()} Quiz - MatoshriCATPrep`;

document.addEventListener("visibilitychange", () => {
    if (document.hidden && quizInProgress) {
        clearInterval(timerInterval);
        showCustomModal("Tab Changed", "You left the tab. The quiz will be submitted automatically.", () => showScore());
    }
});

window.addEventListener("blur", () => {
    if (quizInProgress) {
        clearInterval(timerInterval);
        showCustomModal("Focus Lost", "Opening other apps or overlays is not allowed. The quiz will be submitted automatically.", () => showScore());
    }
});

// Anti-Cheat: Fullscreen Change Listener
document.addEventListener("fullscreenchange", () => {
    if (isFullscreenEngaged && !document.fullscreenElement && quizInProgress) {
        clearInterval(timerInterval);
        showCustomModal("Fullscreen Exited", "You exited fullscreen mode. The quiz will be submitted automatically.", () => showScore());
    }
});

// Anti-Cheat: Disable Right-Click
document.addEventListener('contextmenu', event => event.preventDefault());

// Anti-Cheat: Disable Copy, Cut, Paste
document.addEventListener('copy', event => event.preventDefault());
document.addEventListener('cut', event => event.preventDefault());
document.addEventListener('paste', event => event.preventDefault());

// Anti-Cheat: Block specific keyboard shortcuts
document.addEventListener('keydown', (e) => {
    // Block F12
    if (e.key === 'F12') {
        e.preventDefault();
    }
    // Block Ctrl+C, Ctrl+V, Ctrl+S, Ctrl+P, Ctrl+U, Ctrl+A
    if (e.ctrlKey || e.metaKey) {
        const blockedKeys = ['c', 'v', 's', 'p', 'u', 'a'];
        if (blockedKeys.includes(e.key.toLowerCase())) {
            e.preventDefault();
        }
    }
});

function startTimer() {
    timerInterval = setInterval(() => {
        timeRemaining--;
        const minutes = Math.floor(timeRemaining / 60).toString().padStart(2, '0');
        const seconds = (timeRemaining % 60).toString().padStart(2, '0');
        timerDisplay.textContent = `${minutes}:${seconds}`;
        if (timeRemaining <= 0) showScore();
    }, 1000);
}

function shuffle(array) {
    let i = array.length, j;
    while (i !== 0) {
        j = Math.floor(Math.random() * i--);
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
}

let isFullscreenEngaged = false;

async function startQuiz() {
    // Temporary: Login enforcement disabled
    /*
    const { data: { session } } = await supabase.auth.getSession();
    if (!session) {
        showCustomModal("Login Required", "You must be logged in to take this quiz.", () => openAuthModal('login'));
        return;
    }
    */

    startContainer.style.display = "none";
    errorState.style.display = "none";
    loadingState.style.display = "flex";

    // Request Fullscreen
    try {
        if (document.documentElement.requestFullscreen) {
            await document.documentElement.requestFullscreen();
            isFullscreenEngaged = true;
        } else if (document.documentElement.webkitRequestFullscreen) { // Safari Fallback
            await document.documentElement.webkitRequestFullscreen();
            isFullscreenEngaged = true;
        }
    } catch (err) {
        console.log("Fullscreen request failed or not supported. Proceeding without enforcement.", err);
    }

    try {
        const allQuestions = await fetchQuestions(subject);
        questions = shuffle([...allQuestions]).slice(0, 20);

        const questionCount = questions.length;
        document.getElementById('quiz-subtitle').textContent =
            `You will take a quiz of ${questionCount} random questions. Do not leave the tab, or your quiz will be submitted.`;
        document.getElementById('score-heading').innerHTML = `<span id="score">0</span>`;
        document.getElementById('score-out-of').textContent = `Out of ${questionCount}`;

        loadingState.style.display = "none";
        document.getElementById("sticky-quiz-header").style.display = "flex";
        quizContainer.style.display = "block";
        quizInProgress = true;
        timeRemaining = 1800;
        startTimer();
        loadQuestion();

    } catch (err) {
        loadingState.style.display = "none";
        document.getElementById('error-message').textContent = err.message;
        errorState.style.display = "block";
    }
}

// --- loadQuestion ---
function loadQuestion() {
    const questionData = questions[currentQuestion];

    // Update Progress Bar
    progressBar.style.width = `${((currentQuestion + 1) / questions.length) * 100}%`;
    progressText.textContent = `Question ${currentQuestion + 1} of ${questions.length}`;

    // Hide the next button on new question load
    nextBtn.style.display = "none";

    // Map options to <li> tags, passing the index to checkAnswer
    let optionsHTML = questionData.options.map((option, index) => {
        return `<li onclick="checkAnswer(this, ${index})">${option}</li>`
    }).join('');

    questionContainer.innerHTML = `
        <div class="question">${currentQuestion + 1}. ${questionData.question}</div>
        <ul class="options" id="options-list">
            ${optionsHTML}
        </ul>
    `;

    // Re-render Math equations after injecting HTML
    if (window.MathJax) {
        MathJax.typesetPromise([document.getElementById('question-container')]).catch((err) => console.log('MathJax error:', err.message));
    }
}

// --- checkAnswer ---
async function checkAnswer(element, selectedIndex) {
    const optionsList = document.getElementById("options-list");
    if (optionsList.classList.contains("disabled")) return; // Prevent double clicks
    optionsList.classList.add("disabled"); // Disable all options

    const questionId = questions[currentQuestion].id;

    // Add a temporary loading state to the clicked option
    element.innerHTML += ' <span class="spinner" style="width: 15px; height: 15px; border-width: 2px;"></span>';

    try {
        // Verify answer with the backend
        const result = await verifyAnswer(questionId, selectedIndex);

        // Remove spinner
        const spinner = element.querySelector('.spinner');
        if (spinner) spinner.remove();

        // Record answers for review later
        questions[currentQuestion].userChoice = selectedIndex;
        questions[currentQuestion].isCorrect = result.isCorrect;
        questions[currentQuestion].correctChoice = result.correctIndex;

        if (result.isCorrect) {
            element.classList.add("correct");
            score++;
        } else {
            element.classList.add("incorrect");

            // Highlight the correct answer returned by the backend
            const allOptions = optionsList.getElementsByTagName('li');
            if (result.correctIndex !== undefined && result.correctIndex !== null) {
                allOptions[result.correctIndex].classList.add("correct");
            }
        }

        // Show the next button instead of auto-advancing
        nextBtn.style.display = "block";

    } catch (err) {
        console.error(err);
        showCustomModal("Verification Error", "Failed to verify answer. Please check your connection.");
        optionsList.classList.remove("disabled");
        const spinner = element.querySelector('.spinner');
        if (spinner) spinner.remove();
    }
}

function nextQuestion() {
    currentQuestion++;
    if (currentQuestion < questions.length) {
        loadQuestion();
    } else {
        showScore();
    }
}

// --- showScore ---
async function showScore() {
    if (!quizInProgress) return;
    quizInProgress = false;
    clearInterval(timerInterval);
    quizContainer.style.display = "none";
    document.getElementById("sticky-quiz-header").style.display = "none";
    scoreContainer.style.display = "block";

    // Exit Fullscreen if in fullscreen
    if (document.fullscreenElement) {
        document.exitFullscreen().catch(err => console.log(err));
    }

    // Save to Database
    try {
        const { data: { session } } = await supabase.auth.getSession();
        if (session) {
            const timeTaken = 1800 - timeRemaining;
            
            // Insert attempt
            await supabase.from('attempts').insert({
                user_id: session.user.id,
                subject: subject,
                score: score,
                total_questions: questions.length || 20,
                time_taken_seconds: timeTaken
            });

            // Calculate and add XP
            const xpEarned = score * 10 + (score >= (questions.length || 20) * 0.8 ? 50 : 0);
            
            // Get current profile XP
            const { data: profile } = await supabase.from('profiles').select('total_xp').eq('id', session.user.id).single();
            if (profile) {
                await supabase.from('profiles').update({ total_xp: profile.total_xp + xpEarned }).eq('id', session.user.id);
            }
        }
    } catch (err) {
        console.error("Failed to save score:", err);
    }

    // Animate Score Counter
    let currentDisplayScore = 0;
    const scoreElement = document.getElementById("score");
    const chartElement = document.getElementById("circular-score-chart");

    // Fix calculation: divide by questions.length instead of hardcoded 10
    const targetPercentage = (score / (questions.length || 20)) * 100;
    chartElement.style.setProperty('--score', targetPercentage);

    const scoreInterval = setInterval(() => {
        if (currentDisplayScore < score) {
            currentDisplayScore++;
            scoreElement.textContent = currentDisplayScore;
        } else {
            clearInterval(scoreInterval);
            // Trigger confetti if score is >= 80% (16 out of 20)
            if (score >= (questions.length || 20) * 0.8) {
                triggerConfetti();
            }
        }
    }, 100);

    buildReviewSection();
}

function triggerConfetti() {
    var duration = 3 * 1000;
    var animationEnd = Date.now() + duration;
    var defaults = { startVelocity: 30, spread: 360, ticks: 60, zIndex: 0 };

    function randomInRange(min, max) {
        return Math.random() * (max - min) + min;
    }

    var interval = setInterval(function () {
        var timeLeft = animationEnd - Date.now();

        if (timeLeft <= 0) {
            return clearInterval(interval);
        }

        var particleCount = 50 * (timeLeft / duration);
        confetti(Object.assign({}, defaults, {
            particleCount,
            origin: { x: randomInRange(0.1, 0.3), y: Math.random() - 0.2 }
        }));
        confetti(Object.assign({}, defaults, {
            particleCount,
            origin: { x: randomInRange(0.7, 0.9), y: Math.random() - 0.2 }
        }));
    }, 250);
}

function buildReviewSection() {
    const reviewSection = document.getElementById("review-section");
    const reviewList = document.getElementById("review-list");

    reviewSection.style.display = "block";
    let reviewHTML = "";

    questions.forEach((q, index) => {
        const isCorrect = q.isCorrect;
        const statusClass = isCorrect ? "correct" : "incorrect";

        // Construct safe strings for rendering
        const userOptionText = q.userChoice !== undefined ? q.options[q.userChoice] : "Did not answer";
        const correctOptionText = q.correctChoice !== undefined ? q.options[q.correctChoice] : "Unknown API State";

        let answerHTML = `<div class="review-answer your-answer"><span>Your Answer:</span> ${userOptionText}</div>`;
        if (!isCorrect) {
            answerHTML += `<div class="review-answer correct-answer"><span>Correct Answer:</span> ${correctOptionText}</div>`;
        }

        reviewHTML += `
            <div class="review-item ${statusClass}">
                <div class="review-question">${index + 1}. ${q.question}</div>
                ${answerHTML}
            </div>
        `;
    });

    reviewList.innerHTML = reviewHTML;

    // Re-render Math equations after injecting HTML
    if (window.MathJax) {
        MathJax.typesetPromise([document.getElementById('review-list')]).catch((err) => console.log('MathJax error:', err.message));
    }
}
