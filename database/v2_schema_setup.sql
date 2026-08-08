-- ==============================================================================
-- MATOSHRICATPREP V2.0 SCHEMA MIGRATION
-- Run this script in the Supabase SQL Editor.
-- ==============================================================================

-- 1. Profiles Table (Extends Supabase Auth)
CREATE TABLE IF NOT EXISTS profiles (
    id UUID REFERENCES auth.users ON DELETE CASCADE PRIMARY KEY,
    full_name TEXT,
    email TEXT,
    role TEXT DEFAULT 'student' CHECK (role IN ('student', 'faculty')),
    branch TEXT,
    semester INTEGER,
    total_xp INTEGER DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Trigger to automatically create a profile when a new user signs up
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger AS $$
BEGIN
  INSERT INTO public.profiles (id, full_name, email, role)
  VALUES (
      new.id, 
      new.raw_user_meta_data->>'full_name', 
      new.email, 
      'student' -- Default to student. Faculty must be manually updated in DB.
  );
  RETURN new;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE PROCEDURE public.handle_new_user();

-- 2. Subjects Mapping Table
CREATE TABLE IF NOT EXISTS subjects (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,       -- e.g., 'fds', 'os', 'iot', 'maths'
    display_name TEXT NOT NULL,      -- e.g., 'Fundamentals of Data Structures'
    branch TEXT NOT NULL,            -- e.g., 'AI&DS', 'Computer', 'IT'
    semester INTEGER NOT NULL
);

-- Insert existing subjects for 1st year (Semester 1/2) as defaults
INSERT INTO subjects (name, display_name, branch, semester) VALUES
('fds', 'Fundamentals of Data Structures', 'All', 2),
('os', 'Operating Systems', 'All', 2),
('iot', 'Internet of Things', 'All', 2),
('maths', 'Mathematics II', 'All', 2)
ON CONFLICT (name) DO NOTHING;

-- 3. Quiz Attempts Tracking Table
CREATE TABLE IF NOT EXISTS attempts (
    id BIGSERIAL PRIMARY KEY,
    user_id UUID REFERENCES profiles(id) ON DELETE CASCADE,
    subject TEXT NOT NULL,
    score INTEGER NOT NULL,
    total_questions INTEGER NOT NULL,
    time_taken_seconds INTEGER NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- ==============================================================================
-- ROW LEVEL SECURITY (RLS) POLICIES
-- ==============================================================================

ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE subjects ENABLE ROW LEVEL SECURITY;
ALTER TABLE attempts ENABLE ROW LEVEL SECURITY;

-- Helper function to bypass RLS for role checks (fixes infinite recursion)
CREATE OR REPLACE FUNCTION public.is_faculty()
RETURNS boolean AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'faculty'
  );
$$ LANGUAGE sql SECURITY DEFINER;

-- Profile Policies
CREATE POLICY "Users can view their own profile" ON profiles 
  FOR SELECT USING (auth.uid() = id);

CREATE POLICY "Users can update their own profile" ON profiles 
  FOR UPDATE USING (auth.uid() = id);

CREATE POLICY "Users can insert their own profile" ON profiles 
  FOR INSERT WITH CHECK (auth.uid() = id);

CREATE POLICY "Faculty can view all profiles" ON profiles 
  FOR SELECT USING (public.is_faculty());

-- Subjects Policies
CREATE POLICY "Public subjects access" ON subjects 
  FOR SELECT USING (true);

-- Attempts Policies
CREATE POLICY "Users can view their own attempts" ON attempts 
  FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own attempts" ON attempts 
  FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Faculty can view all attempts" ON attempts 
  FOR SELECT USING (public.is_faculty());

-- Modify existing questions to have RLS just in case
ALTER TABLE questions ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read access" ON questions;
CREATE POLICY "Public read access" ON questions FOR SELECT USING (true);
