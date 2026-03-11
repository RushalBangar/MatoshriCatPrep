const SUPABASE_URL = 'https://hcbcsziktqnuvbtpvtxa.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhjYmNzemlrdHFudXZidHB2dHhhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzMxOTk1NjAsImV4cCI6MjA4ODc3NTU2MH0.wSnD6RAoOxudRdZQe1GPRX7i5iDrPSdofM7QO0m97pU';

async function fetchQuestions(subject) {
    // Calling the new RPC function to get questions without 'isCorrect' values
    const endpoint = `${SUPABASE_URL}/rest/v1/rpc/get_quiz_questions`;

    const response = await fetch(endpoint, {
        method: 'POST',
        headers: {
            'apikey': SUPABASE_ANON_KEY,
            'Authorization': `Bearer ${SUPABASE_ANON_KEY}`,
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ p_subject: subject })
    });

    if (!response.ok) {
        throw new Error(`Supabase error: ${response.status} ${response.statusText}`);
    }

    const data = await response.json();

    if (!data || data.length === 0) {
        throw new Error(`No questions found for subject: "${subject}"`);
    }

    return data;
}

// Function to check the answer securely on the backend
async function verifyAnswer(questionId, optionIndex) {
    const endpoint = `${SUPABASE_URL}/rest/v1/rpc/check_quiz_answer`;

    const response = await fetch(endpoint, {
        method: 'POST',
        headers: {
            'apikey': SUPABASE_ANON_KEY,
            'Authorization': `Bearer ${SUPABASE_ANON_KEY}`,
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            p_question_id: questionId,
            p_option_index: optionIndex
        })
    });

    if (!response.ok) {
        throw new Error(`Failed to check answer: ${response.status}`);
    }

    const data = await response.json();
    return data; // returns { isCorrect: boolean, correctIndex: integer }
}