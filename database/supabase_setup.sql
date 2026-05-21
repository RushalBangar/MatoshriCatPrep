-- ==============================================================================
-- PREMIUM SUPABASE SETUP: Flat Database Schema
-- Run this script in the Supabase SQL Editor.
-- NOTE: If you have existing data, this drops the old tables!
-- ==============================================================================

-- 1. Drop the old tables and functions
DROP FUNCTION IF EXISTS get_quiz_questions(text);
DROP FUNCTION IF EXISTS check_quiz_answer(bigint, integer);
DROP TABLE IF EXISTS options CASCADE;
DROP TABLE IF EXISTS questions CASCADE;

-- 2. Create the unified questions table
CREATE TABLE questions (
    id BIGSERIAL PRIMARY KEY,
    subject TEXT NOT NULL,
    question TEXT NOT NULL,
    options JSONB NOT NULL, -- Stored as: '["Option A", "Option B", "Option C", "Option D"]'
    correct_index INTEGER NOT NULL
);

-- 3. Enable RLS and public read access
ALTER TABLE questions ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Public read access" ON questions FOR SELECT USING (true);

-- 4. Create an index for fast filtering by subject
CREATE INDEX idx_questions_subject ON questions (subject);

-- ==============================================================================
-- 5. RPC FUNCTIONS FOR FRONTEND
-- ==============================================================================

-- A) Securely fetch questions without the correct_index
CREATE OR REPLACE FUNCTION get_quiz_questions(p_subject text)
RETURNS TABLE (
    id bigint,
    subject text,
    question text,
    options jsonb
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        q.id,
        q.subject,
        q.question,
        -- The frontend currently expects an array of objects: [{"text": "Option A"}, {"text": "Option B"}]
        -- We can convert our clean string array into that format on the fly so we don't need to rewrite all HTML files.
        (
            SELECT jsonb_agg(jsonb_build_object('text', opt))
            FROM jsonb_array_elements_text(q.options) AS opt
        ) as options
    FROM questions q
    WHERE q.subject = p_subject
    ORDER BY random();
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- B) Securely check if the answer is correct
CREATE OR REPLACE FUNCTION check_quiz_answer(p_question_id bigint, p_option_index integer)
RETURNS jsonb AS $$
DECLARE
    v_correct_index integer;
BEGIN
    -- Get the correct index mapped to the question
    SELECT correct_index INTO v_correct_index
    FROM questions
    WHERE id = p_question_id;

    -- Return JSON response matching the existing frontend format
    RETURN jsonb_build_object(
        'isCorrect', (v_correct_index = p_option_index),
        'correctIndex', v_correct_index
    );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
