// Initialize Supabase Client
if (typeof SUPABASE_URL === 'undefined') {
    var SUPABASE_URL = 'https://hcbcsziktqnuvbtpvtxa.supabase.co';
}
if (typeof SUPABASE_ANON_KEY === 'undefined') {
    var SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhjYmNzemlrdHFudXZidHB2dHhhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzMxOTk1NjAsImV4cCI6MjA4ODc3NTU2MH0.wSnD6RAoOxudRdZQe1GPRX7i5iDrPSdofM7QO0m97pU';
}

// Create a single supabase client for interacting with your database
if (typeof supabase === 'undefined' || (supabase && typeof supabase.auth === 'undefined')) {
    var supabase = window.supabase ? window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY) : null;
}

let authMode = 'login'; // 'login' or 'signup'
let currentUser = null;
let currentProfile = null;

document.addEventListener('DOMContentLoaded', async () => {
    // Check active session on load
    const { data: { session } } = await supabase.auth.getSession();
    handleSessionState(session);

    // Listen for auth changes
    supabase.auth.onAuthStateChange((event, session) => {
        handleSessionState(session);
    });
});

async function handleSessionState(session) {
    const loginBtn = document.getElementById('nav-login-btn');
    const heroLoginBtn = document.getElementById('hero-login-btn');
    const dashboardBtn = document.getElementById('nav-dashboard-btn');
    const logoutBtn = document.getElementById('nav-logout-btn');

    if (session) {
        currentUser = session.user;
        // User is logged in
        if(loginBtn) loginBtn.style.display = 'none';
        if(heroLoginBtn) heroLoginBtn.style.display = 'none';
        if(dashboardBtn) dashboardBtn.style.display = 'inline-block';
        if(logoutBtn) logoutBtn.style.display = 'inline-block';
        
        // Fetch profile to see if branch/sem is set
        const { data: profile } = await supabase.from('profiles').select('*').eq('id', currentUser.id).single();
        currentProfile = profile;
    } else {
        currentUser = null;
        currentProfile = null;
        // User is logged out
        if(loginBtn) loginBtn.style.display = 'inline-block';
        if(heroLoginBtn) heroLoginBtn.style.display = 'inline-block';
        if(dashboardBtn) dashboardBtn.style.display = 'none';
        if(logoutBtn) logoutBtn.style.display = 'none';
    }
}

// Modal functions
function openAuthModal(mode) {
    authMode = mode;
    document.getElementById('auth-modal-overlay').style.display = 'flex';
    updateAuthUI();
}

function closeAuthModal() {
    document.getElementById('auth-modal-overlay').style.display = 'none';
}

function toggleAuthMode() {
    authMode = authMode === 'login' ? 'signup' : 'login';
    updateAuthUI();
}

function updateAuthUI() {
    const title = document.getElementById('auth-modal-title');
    const actionBtn = document.getElementById('auth-action-btn');
    const toggleText = document.getElementById('auth-toggle-text');
    const nameInput = document.getElementById('auth-fullname');
    const errorMsg = document.getElementById('auth-error-msg');
    
    errorMsg.style.display = 'none';

    if (authMode === 'login') {
        title.textContent = 'Welcome Back';
        actionBtn.textContent = 'Log In';
        toggleText.textContent = "Don't have an account?";
        nameInput.style.display = 'none';
    } else {
        title.textContent = 'Create Account';
        actionBtn.textContent = 'Sign Up';
        toggleText.textContent = 'Already have an account?';
        nameInput.style.display = 'block';
    }
}

function showAuthError(msg, isSuccess = false) {
    const errorMsg = document.getElementById('auth-error-msg');
    errorMsg.textContent = msg;
    errorMsg.style.color = isSuccess ? '#10b981' : '#ff4d4d';
    errorMsg.style.display = 'block';
}

async function handleAuthAction() {
    const email = document.getElementById('auth-email').value.trim();
    const password = document.getElementById('auth-password').value;
    const actionBtn = document.getElementById('auth-action-btn');

    if (!email || !password) {
        showAuthError("Please fill in all fields.");
        return;
    }

    actionBtn.textContent = 'Processing...';
    actionBtn.disabled = true;

    try {
        if (authMode === 'login') {
            const { data, error } = await supabase.auth.signInWithPassword({
                email: email,
                password: password
            });
            if (error) throw error;
            closeAuthModal();
            if (window.location.pathname === '/' || window.location.pathname === '/index.html') {
                window.location.href = '/dashboard';
            }
        } else {
            const fullName = document.getElementById('auth-fullname').value.trim();
            if(!fullName) {
                showAuthError("Please enter your full name.");
                actionBtn.textContent = 'Sign Up';
                actionBtn.disabled = false;
                return;
            }

            const { data, error } = await supabase.auth.signUp({
                email: email,
                password: password,
                options: {
                    data: {
                        full_name: fullName
                    }
                }
            });
            if (error) throw error;
            showAuthError("Success! You can now log in (or check email for confirmation).", true);
            setTimeout(() => toggleAuthMode(), 2000);
        }
    } catch (err) {
        showAuthError(err.message);
    } finally {
        if(authMode === 'login') actionBtn.textContent = 'Log In';
        else actionBtn.textContent = 'Sign Up';
        actionBtn.disabled = false;
    }
}

async function signInWithGoogle() {
    try {
        const { data, error } = await supabase.auth.signInWithOAuth({
            provider: 'google',
            options: {
                redirectTo: window.location.origin + '/dashboard' // redirect to dashboard on success
            }
        });
        if (error) throw error;
    } catch (err) {
        showAuthError(err.message);
    }
}

async function handleLogout() {
    await supabase.auth.signOut();
    if (window.location.pathname.includes('/dashboard') || window.location.pathname.includes('/admin')) {
        window.location.href = '/';
    } else {
        window.location.reload();
    }
}
