-- ==============================================================================
-- SUPABASE MIGRATION SCRIPT: Normalize JSONB options to a relational table
-- Run this entire script in the Supabase SQL Editor to migrate your data securely.
-- ==============================================================================

-- 1. Create the new options table
CREATE TABLE IF NOT EXISTS options (
    id BIGSERIAL PRIMARY KEY,
    question_id BIGINT REFERENCES questions(id) ON DELETE CASCADE,
    option_text TEXT NOT NULL,
    is_correct BOOLEAN NOT NULL DEFAULT false
);

-- 2. Migrate existing data from questions.options (JSONB) to the new options table
-- This safely splits your existing JSON array into individual rows.
INSERT INTO options (question_id, option_text, is_correct)
SELECT 
    q.id as question_id,
    (opt->>'text')::text as option_text,
    (opt->>'isCorrect')::boolean as is_correct
FROM 
    questions q,
    jsonb_array_elements(q.options) AS opt;

-- 3. Now that data is safely migrated, we can drop the old JSONB options column
ALTER TABLE questions DROP COLUMN options;

-- 4. Enable Row Level Security (RLS) on the new table and allow public read access
ALTER TABLE options ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Public read access" ON options FOR SELECT USING (true);


-- ==============================================================================
-- 5. UPDATE EXISTING SECURE RPC FUNCTIONS TO USE THE NEW RELATIONAL STRUCTURE
-- ==============================================================================

-- A) Update `get_quiz_questions` to fetch options securely (excluding isCorrect)
DROP FUNCTION IF EXISTS get_quiz_questions(text);
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
        (
            SELECT jsonb_agg(jsonb_build_object('text', o.option_text) ORDER BY o.id)
            FROM options o
            WHERE o.question_id = q.id
        ) as options
    FROM questions q
    WHERE q.subject = p_subject
    ORDER BY q.id;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;

-- B) Update `check_quiz_answer` to verify answers securely on the backend
DROP FUNCTION IF EXISTS check_quiz_answer(bigint, integer);
CREATE OR REPLACE FUNCTION check_quiz_answer(p_question_id bigint, p_option_index integer)
RETURNS jsonb AS $$
DECLARE
    v_is_correct boolean;
    v_correct_index integer;
BEGIN
    -- Find the specific option the user selected based on order (0-indexed)
    SELECT op.is_correct INTO v_is_correct
    FROM (
        SELECT is_correct, row_number() OVER (ORDER BY id) - 1 as index_val
        FROM options
        WHERE question_id = p_question_id
    ) op
    WHERE op.index_val = p_option_index;

    -- Find the index of the correct option
    SELECT op.index_val INTO v_correct_index
    FROM (
        SELECT is_correct, row_number() OVER (ORDER BY id) - 1 as index_val
        FROM options
        WHERE question_id = p_question_id
    ) op
    WHERE op.is_correct = true
    LIMIT 1;

    -- Return JSON response
    RETURN jsonb_build_object(
        'isCorrect', COALESCE(v_is_correct, false),
        'correctIndex', v_correct_index
    );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;
