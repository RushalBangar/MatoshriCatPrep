-- Clear existing data first
DELETE FROM options;
DELETE FROM questions;

-- Auto-generated for Supabase

-- Data for fds

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What term refers to raw facts and figures that are not processed?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Algorithm', false),
  ((SELECT id FROM inserted_question), 'Data', true),
  ((SELECT id FROM inserted_question), 'Array', false),
  ((SELECT id FROM inserted_question), 'Function', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which of the following has no meaning by itself?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Data Structure', false),
  ((SELECT id FROM inserted_question), 'Data Object', false),
  ((SELECT id FROM inserted_question), 'Data', true),
  ((SELECT id FROM inserted_question), 'Data Type', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What is considered the input to a computer?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Output', false),
  ((SELECT id FROM inserted_question), 'Algorithm', false),
  ((SELECT id FROM inserted_question), 'Data', true),
  ((SELECT id FROM inserted_question), 'Memory', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What tells the computer what kind of value a variable can store?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Data Object', false),
  ((SELECT id FROM inserted_question), 'Data Type', true),
  ((SELECT id FROM inserted_question), 'Algorithm', false),
  ((SELECT id FROM inserted_question), 'Array', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which data type is used to store whole numbers?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'float', false),
  ((SELECT id FROM inserted_question), 'string', false),
  ((SELECT id FROM inserted_question), 'int', true),
  ((SELECT id FROM inserted_question), 'char', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which data type is used to store decimal numbers?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'int', false),
  ((SELECT id FROM inserted_question), 'float', true),
  ((SELECT id FROM inserted_question), 'boolean', false),
  ((SELECT id FROM inserted_question), 'object', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What is a named location in memory that stores data called?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Data Object', true),
  ((SELECT id FROM inserted_question), 'Data Type', false),
  ((SELECT id FROM inserted_question), 'Base Address', false),
  ((SELECT id FROM inserted_question), 'Pointer', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'A data object has a name, a data type, and it holds a...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'variable', false),
  ((SELECT id FROM inserted_question), 'structure', false),
  ((SELECT id FROM inserted_question), 'value', true),
  ((SELECT id FROM inserted_question), 'loop', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Organizing and storing data efficiently is the primary purpose of a:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Data Type', false),
  ((SELECT id FROM inserted_question), 'Data Structure', true),
  ((SELECT id FROM inserted_question), 'Computer Monitor', false),
  ((SELECT id FROM inserted_question), 'Text Editor', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What does an Abstract Data Type (ADT) focus on?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'How operations are implemented', false),
  ((SELECT id FROM inserted_question), 'What operations can be done', true),
  ((SELECT id FROM inserted_question), 'The syntax of the code', false),
  ((SELECT id FROM inserted_question), 'The hardware used', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which real-life example is used to explain an Abstract Data Type (ADT)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Driving a car', false),
  ((SELECT id FROM inserted_question), 'An ATM machine', true),
  ((SELECT id FROM inserted_question), 'Cooking a meal', false),
  ((SELECT id FROM inserted_question), 'Writing a letter', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Data structures help to use what efficiently?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Peripherals', false),
  ((SELECT id FROM inserted_question), 'Network bandwidth', false),
  ((SELECT id FROM inserted_question), 'Memory', true),
  ((SELECT id FROM inserted_question), 'Screen space', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'In which type of data structure are elements arranged in a straight line?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Non-linear', false),
  ((SELECT id FROM inserted_question), 'Dynamic', false),
  ((SELECT id FROM inserted_question), 'Persistent', false),
  ((SELECT id FROM inserted_question), 'Linear', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'In a linear data structure, how are elements accessed?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Randomly', false),
  ((SELECT id FROM inserted_question), 'Sequentially', true),
  ((SELECT id FROM inserted_question), 'Hierarchically', false),
  ((SELECT id FROM inserted_question), 'Exponentially', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which of the following is a linear data structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Tree', false),
  ((SELECT id FROM inserted_question), 'Graph', false),
  ((SELECT id FROM inserted_question), 'Array', true),
  ((SELECT id FROM inserted_question), 'Database', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What is a real-life example of a linear data structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'A family tree', false),
  ((SELECT id FROM inserted_question), 'Students standing in a queue', true),
  ((SELECT id FROM inserted_question), 'A college department structure', false),
  ((SELECT id FROM inserted_question), 'A map of cities', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'In which data structure can one element be connected to many elements?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Linear', false),
  ((SELECT id FROM inserted_question), 'Array', false),
  ((SELECT id FROM inserted_question), 'Non-linear', true),
  ((SELECT id FROM inserted_question), 'Stack', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Non-linear data structures are typically used to represent:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Sequential actions', false),
  ((SELECT id FROM inserted_question), 'Hierarchy or relationships', true),
  ((SELECT id FROM inserted_question), 'Basic arithmetic', false),
  ((SELECT id FROM inserted_question), 'Unsorted lists', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which of the following is an example of a non-linear data structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Array', false),
  ((SELECT id FROM inserted_question), 'Stack', false),
  ((SELECT id FROM inserted_question), 'Queue', false),
  ((SELECT id FROM inserted_question), 'Tree', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What is a real-life example of a non-linear data structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'A family tree', true),
  ((SELECT id FROM inserted_question), 'Waiting for a bus', false),
  ((SELECT id FROM inserted_question), 'A stack of plates', false),
  ((SELECT id FROM inserted_question), 'Writing a list', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which data structure has a fixed size before program execution?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Dynamic', false),
  ((SELECT id FROM inserted_question), 'Ephemeral', false),
  ((SELECT id FROM inserted_question), 'Static', true),
  ((SELECT id FROM inserted_question), 'Persistent', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Can the size of a static data structure be changed during runtime?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Yes, always', false),
  ((SELECT id FROM inserted_question), 'No, it cannot be changed', true),
  ((SELECT id FROM inserted_question), 'Only if it is an array', false),
  ((SELECT id FROM inserted_question), 'Only if memory allows', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What is a common example of a static data structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Linked List', false),
  ((SELECT id FROM inserted_question), 'Graph', false),
  ((SELECT id FROM inserted_question), 'Array', true),
  ((SELECT id FROM inserted_question), 'Tree', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'A fixed number of seats in a classroom is an example of what type of data structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Dynamic', false),
  ((SELECT id FROM inserted_question), 'Static', true),
  ((SELECT id FROM inserted_question), 'Ephemeral', false),
  ((SELECT id FROM inserted_question), 'Persistent', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which data structure can change its size during execution?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Dynamic', true),
  ((SELECT id FROM inserted_question), 'Static', false),
  ((SELECT id FROM inserted_question), 'Fixed', false),
  ((SELECT id FROM inserted_question), 'Constant', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'In a dynamic data structure, when is memory allocated?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Before execution', false),
  ((SELECT id FROM inserted_question), 'Only at the end', false),
  ((SELECT id FROM inserted_question), 'When needed', true),
  ((SELECT id FROM inserted_question), 'Never', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which of the following is a dynamic data structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Fixed Array', false),
  ((SELECT id FROM inserted_question), 'Linked List', true),
  ((SELECT id FROM inserted_question), 'String', false),
  ((SELECT id FROM inserted_question), 'Integer', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Bus passengers entering or leaving anytime is a real-life example of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Static structure', false),
  ((SELECT id FROM inserted_question), 'Linear structure', false),
  ((SELECT id FROM inserted_question), 'Dynamic structure', true),
  ((SELECT id FROM inserted_question), 'Hierarchical structure', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'In an ephemeral data structure, which version of data is available?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Only the oldest version', false),
  ((SELECT id FROM inserted_question), 'Only the latest version', true),
  ((SELECT id FROM inserted_question), 'All previous versions', false),
  ((SELECT id FROM inserted_question), 'No versions', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What happens to old data in an ephemeral data structure after modifications?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'It is saved in an archive', false),
  ((SELECT id FROM inserted_question), 'It is sent to the cloud', false),
  ((SELECT id FROM inserted_question), 'It is lost and cannot be accessed', true),
  ((SELECT id FROM inserted_question), 'It becomes read-only', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Writing on a whiteboard and erasing old content represents which data structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Persistent', false),
  ((SELECT id FROM inserted_question), 'Ephemeral', true),
  ((SELECT id FROM inserted_question), 'Dynamic', false),
  ((SELECT id FROM inserted_question), 'Non-linear', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which data structure preserves all its previous data even after modification?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Ephemeral', false),
  ((SELECT id FROM inserted_question), 'Persistent', true),
  ((SELECT id FROM inserted_question), 'Static', false),
  ((SELECT id FROM inserted_question), 'Linear', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What does every update in a persistent data structure create?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'A new version', true),
  ((SELECT id FROM inserted_question), 'A memory leak', false),
  ((SELECT id FROM inserted_question), 'A static array', false),
  ((SELECT id FROM inserted_question), 'An error', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which of the following is an example of a persistent data structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'A basic integer variable', false),
  ((SELECT id FROM inserted_question), 'Version control systems like Git', true),
  ((SELECT id FROM inserted_question), 'A standard array', false),
  ((SELECT id FROM inserted_question), 'A physical whiteboard', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Google Docs history and MS Word Undo/Redo are examples of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Static structures', false),
  ((SELECT id FROM inserted_question), 'Ephemeral structures', false),
  ((SELECT id FROM inserted_question), 'Persistent structures', true),
  ((SELECT id FROM inserted_question), 'Non-linear structures', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Arrays and stacks are commonly used examples of which type of structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Persistent', false),
  ((SELECT id FROM inserted_question), 'Ephemeral', true),
  ((SELECT id FROM inserted_question), 'Non-linear', false),
  ((SELECT id FROM inserted_question), 'Advanced', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'An algorithm is defined as a step-by-step...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'hardware device', false),
  ((SELECT id FROM inserted_question), 'procedure', true),
  ((SELECT id FROM inserted_question), 'memory block', false),
  ((SELECT id FROM inserted_question), 'compiler', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'An algorithm must perform a task in a...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'random amount of time', false),
  ((SELECT id FROM inserted_question), 'infinite amount of time', false),
  ((SELECT id FROM inserted_question), 'finite amount of time', true),
  ((SELECT id FROM inserted_question), 'zero amount of time', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'How many inputs can an algorithm have?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Exactly one', false),
  ((SELECT id FROM inserted_question), 'Zero or more', true),
  ((SELECT id FROM inserted_question), 'At least two', false),
  ((SELECT id FROM inserted_question), 'Infinite', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'How many outputs must an algorithm produce?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'None', false),
  ((SELECT id FROM inserted_question), 'Exactly zero', false),
  ((SELECT id FROM inserted_question), 'At least one', true),
  ((SELECT id FROM inserted_question), 'Unlimited', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which characteristic means every step of an algorithm must be clear and specific?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Finiteness', false),
  ((SELECT id FROM inserted_question), 'Definiteness', true),
  ((SELECT id FROM inserted_question), 'Effectiveness', false),
  ((SELECT id FROM inserted_question), 'Correctness', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'In an algorithm, definiteness ensures there is no...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'confusion about what to do', true),
  ((SELECT id FROM inserted_question), 'time limit', false),
  ((SELECT id FROM inserted_question), 'input required', false),
  ((SELECT id FROM inserted_question), 'memory usage', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'The rule that an algorithm must end after a limited number of steps is called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Definiteness', false),
  ((SELECT id FROM inserted_question), 'Correctness', false),
  ((SELECT id FROM inserted_question), 'Finiteness', true),
  ((SELECT id FROM inserted_question), 'Effectiveness', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'According to the finiteness characteristic, what is NOT allowed in an algorithm?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Inputs', false),
  ((SELECT id FROM inserted_question), 'Variables', false),
  ((SELECT id FROM inserted_question), 'Infinite loops', true),
  ((SELECT id FROM inserted_question), 'Sequential steps', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'The characteristic demanding each step be simple, practical, and possible to perform is:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Finiteness', false),
  ((SELECT id FROM inserted_question), 'Effectiveness', true),
  ((SELECT id FROM inserted_question), 'Correctness', false),
  ((SELECT id FROM inserted_question), 'Output', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'The instruction "Think of the best number" violates which algorithmic characteristic?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Correctness', false),
  ((SELECT id FROM inserted_question), 'Finiteness', false),
  ((SELECT id FROM inserted_question), 'Effectiveness', true),
  ((SELECT id FROM inserted_question), 'Input', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which characteristic ensures an algorithm always produces the right result for valid inputs?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Correctness', true),
  ((SELECT id FROM inserted_question), 'Finiteness', false),
  ((SELECT id FROM inserted_question), 'Definiteness', false),
  ((SELECT id FROM inserted_question), 'Effectiveness', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'The foundation of programming consists of data, data structures, and...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Compilers', false),
  ((SELECT id FROM inserted_question), 'Algorithms', true),
  ((SELECT id FROM inserted_question), 'Hardware', false),
  ((SELECT id FROM inserted_question), 'Networks', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'A complete program is considered the sum of Data + Data Structure + ...?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Output', false),
  ((SELECT id FROM inserted_question), 'Algorithm', true),
  ((SELECT id FROM inserted_question), 'Syntax', false),
  ((SELECT id FROM inserted_question), 'Memory', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Without proper data structures, algorithms become...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'faster', false),
  ((SELECT id FROM inserted_question), 'slow and inefficient', true),
  ((SELECT id FROM inserted_question), 'perfectly accurate', false),
  ((SELECT id FROM inserted_question), 'hardware dependent', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What does the implementation of a data structure refer to?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The hardware it runs on', false),
  ((SELECT id FROM inserted_question), 'How to store and manage data in memory', true),
  ((SELECT id FROM inserted_question), 'The specific programming language syntax', false),
  ((SELECT id FROM inserted_question), 'The graphical user interface', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What are the two main ways to implement data structures?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Ephemeral and Persistent', false),
  ((SELECT id FROM inserted_question), 'Static and Dynamic', true),
  ((SELECT id FROM inserted_question), 'Linear and Non-linear', false),
  ((SELECT id FROM inserted_question), 'Internal and External', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'The process of studying how efficient an algorithm is, is called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Implementation', false),
  ((SELECT id FROM inserted_question), 'Execution', false),
  ((SELECT id FROM inserted_question), 'Analysis', true),
  ((SELECT id FROM inserted_question), 'Compilation', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What does the complexity of an algorithm tell us?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'How much the software costs', false),
  ((SELECT id FROM inserted_question), 'How efficient it is when input size increases', true),
  ((SELECT id FROM inserted_question), 'The exact number of code lines', false),
  ((SELECT id FROM inserted_question), 'Who wrote the algorithm', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What are the two types of algorithm complexity?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Static and Dynamic', false),
  ((SELECT id FROM inserted_question), 'Linear and Non-linear', false),
  ((SELECT id FROM inserted_question), 'Time and Space', true),
  ((SELECT id FROM inserted_question), 'Fast and Slow', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Space complexity measures the total amount of what required by an algorithm?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Time', false),
  ((SELECT id FROM inserted_question), 'Memory', true),
  ((SELECT id FROM inserted_question), 'Code', false),
  ((SELECT id FROM inserted_question), 'Power', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'If a program only adds two numbers using fixed variables, its space complexity is:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(n)', false),
  ((SELECT id FROM inserted_question), 'O(log n)', false),
  ((SELECT id FROM inserted_question), 'O(1)', true),
  ((SELECT id FROM inserted_question), 'O(n^2)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'If a program uses arrays or recursion, its memory depends on n inputs, making the complexity:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(1)', false),
  ((SELECT id FROM inserted_question), 'O(n)', true),
  ((SELECT id FROM inserted_question), 'Constant', false),
  ((SELECT id FROM inserted_question), 'Zero', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Time complexity is measured as a function of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Execution seconds', false),
  ((SELECT id FROM inserted_question), 'Input size', true),
  ((SELECT id FROM inserted_question), 'Memory bytes', false),
  ((SELECT id FROM inserted_question), 'Line numbers', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Time complexity is measured in actual time in seconds.')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'True', false),
  ((SELECT id FROM inserted_question), 'False', true),
  ((SELECT id FROM inserted_question), 'Only for arrays', false),
  ((SELECT id FROM inserted_question), 'Only for loops', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Time complexity depends primarily on the number of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Variables', false),
  ((SELECT id FROM inserted_question), 'Operations', true),
  ((SELECT id FROM inserted_question), 'Comments', false),
  ((SELECT id FROM inserted_question), 'Classes', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'The time complexity for adding two numbers is:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(n)', false),
  ((SELECT id FROM inserted_question), 'O(log n)', false),
  ((SELECT id FROM inserted_question), 'O(1)', true),
  ((SELECT id FROM inserted_question), 'O(n^2)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What is the mathematical way to represent time complexity or memory usage?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Algebra Notation', false),
  ((SELECT id FROM inserted_question), 'Big-O Notation', true),
  ((SELECT id FROM inserted_question), 'Binary Notation', false),
  ((SELECT id FROM inserted_question), 'Hexadecimal Notation', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'In Big-O notation, what does O(1) represent?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Linear time', false),
  ((SELECT id FROM inserted_question), 'Quadratic time', false),
  ((SELECT id FROM inserted_question), 'Constant time', true),
  ((SELECT id FROM inserted_question), 'Exponential time', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'In Big-O notation, what does O(n) represent?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Constant time', false),
  ((SELECT id FROM inserted_question), 'Linear time', true),
  ((SELECT id FROM inserted_question), 'Logarithmic time', false),
  ((SELECT id FROM inserted_question), 'Quadratic time', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'An algorithm with a single loop typically has a time complexity of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(1)', false),
  ((SELECT id FROM inserted_question), 'O(n)', true),
  ((SELECT id FROM inserted_question), 'O(n^2)', false),
  ((SELECT id FROM inserted_question), 'O(log n)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'An algorithm with nested loops typically has a time complexity of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(n)', false),
  ((SELECT id FROM inserted_question), 'O(n^2)', true),
  ((SELECT id FROM inserted_question), 'O(1)', false),
  ((SELECT id FROM inserted_question), 'O(log n)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Binary search is an example of which time complexity?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(1)', false),
  ((SELECT id FROM inserted_question), 'O(n)', false),
  ((SELECT id FROM inserted_question), 'O(log n)', true),
  ((SELECT id FROM inserted_question), 'O(2^n)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Recursive Fibonacci is an example of which time complexity?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(2^n)', true),
  ((SELECT id FROM inserted_question), 'O(n)', false),
  ((SELECT id FROM inserted_question), 'O(n^2)', false),
  ((SELECT id FROM inserted_question), 'O(1)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'When computing time complexity, what is the first step?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Ignore constants', false),
  ((SELECT id FROM inserted_question), 'Write Big-O notation', false),
  ((SELECT id FROM inserted_question), 'Identify basic operations', false),
  ((SELECT id FROM inserted_question), 'Identify the input size', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'When computing time complexity, you should ignore constants and...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'lower terms', true),
  ((SELECT id FROM inserted_question), 'the input size', false),
  ((SELECT id FROM inserted_question), 'basic operations', false),
  ((SELECT id FROM inserted_question), 'the highest order term', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Sequential organization stores data elements in...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'random memory locations', false),
  ((SELECT id FROM inserted_question), 'scattered sectors', false),
  ((SELECT id FROM inserted_question), 'consecutive memory locations', true),
  ((SELECT id FROM inserted_question), 'separate databases', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Each element in a sequential organization can be accessed using its:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Name', false),
  ((SELECT id FROM inserted_question), 'Index', true),
  ((SELECT id FROM inserted_question), 'Value', false),
  ((SELECT id FROM inserted_question), 'Size', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'An array stores a collection of elements of the...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'same data type', true),
  ((SELECT id FROM inserted_question), 'different data types', false),
  ((SELECT id FROM inserted_question), 'mixed variables', false),
  ((SELECT id FROM inserted_question), 'objects', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Sequential organization easily supports what kind of access?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Read-only access', false),
  ((SELECT id FROM inserted_question), 'Random access', true),
  ((SELECT id FROM inserted_question), 'Network access', false),
  ((SELECT id FROM inserted_question), 'Write-only access', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'If an array has N elements, what is the index range?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '1 to N', false),
  ((SELECT id FROM inserted_question), '0 to N', false),
  ((SELECT id FROM inserted_question), '0 to N-1', true),
  ((SELECT id FROM inserted_question), '1 to N-1', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Which Array ADT operation allocates memory and creates the structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Traverse', false),
  ((SELECT id FROM inserted_question), 'Insert', false),
  ((SELECT id FROM inserted_question), 'Delete', false),
  ((SELECT id FROM inserted_question), 'Create', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'The traversal operation in an array means:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Deleting all elements', false),
  ((SELECT id FROM inserted_question), 'Visiting all elements one by one', true),
  ((SELECT id FROM inserted_question), 'Sorting the elements', false),
  ((SELECT id FROM inserted_question), 'Reversing the elements', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'In the memory representation of an array, each element occupies:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Equal memory space', true),
  ((SELECT id FROM inserted_question), 'Different memory spaces', false),
  ((SELECT id FROM inserted_question), 'Zero memory space', false),
  ((SELECT id FROM inserted_question), 'Random memory space', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'In address calculation, what does ''LB'' stand for?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Linear Bound', false),
  ((SELECT id FROM inserted_question), 'Lower Bound', true),
  ((SELECT id FROM inserted_question), 'Limit Base', false),
  ((SELECT id FROM inserted_question), 'Last Byte', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'If the base address of an integer array is 1000 and the size of an int is 4 bytes, what is the address of index 3?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '1004', false),
  ((SELECT id FROM inserted_question), '1008', false),
  ((SELECT id FROM inserted_question), '1012', true),
  ((SELECT id FROM inserted_question), '1016', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'When inserting an element into an array, existing elements may need to be shifted in which direction to create space?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Up', false),
  ((SELECT id FROM inserted_question), 'Down', false),
  ((SELECT id FROM inserted_question), 'Left', false),
  ((SELECT id FROM inserted_question), 'Right', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'After inserting an element, how should the array''s size be updated?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Increment by 1', true),
  ((SELECT id FROM inserted_question), 'Decrement by 1', false),
  ((SELECT id FROM inserted_question), 'Multiply by 2', false),
  ((SELECT id FROM inserted_question), 'Keep it the same', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Inserting an element at the beginning of an array requires shifting:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'No elements', false),
  ((SELECT id FROM inserted_question), 'Only the first element', false),
  ((SELECT id FROM inserted_question), 'Every existing element', true),
  ((SELECT id FROM inserted_question), 'Only the last element', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Inserting an element at the end of an array (if space exists) requires shifting:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'All elements', false),
  ((SELECT id FROM inserted_question), 'Half the elements', false),
  ((SELECT id FROM inserted_question), 'No elements', true),
  ((SELECT id FROM inserted_question), 'One element', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What is the worst/average case time complexity for inserting an element into an array?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(1)', false),
  ((SELECT id FROM inserted_question), 'O(N)', true),
  ((SELECT id FROM inserted_question), 'O(N^2)', false),
  ((SELECT id FROM inserted_question), 'O(log N)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'What is the best case time complexity for inserting an element (at the end) of an array?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(1)', true),
  ((SELECT id FROM inserted_question), 'O(N)', false),
  ((SELECT id FROM inserted_question), 'O(N^2)', false),
  ((SELECT id FROM inserted_question), 'O(log N)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Deleting an element from an array usually involves shifting elements to the...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Right', false),
  ((SELECT id FROM inserted_question), 'Left', true),
  ((SELECT id FROM inserted_question), 'Top', false),
  ((SELECT id FROM inserted_question), 'Bottom', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'After deleting an element from an array, you must decrease the total count of elements by:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '0', false),
  ((SELECT id FROM inserted_question), '1', true),
  ((SELECT id FROM inserted_question), '2', false),
  ((SELECT id FROM inserted_question), 'N', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Deleting an element from the beginning of an array has a time complexity of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(1)', false),
  ((SELECT id FROM inserted_question), 'O(N)', true),
  ((SELECT id FROM inserted_question), 'O(N^2)', false),
  ((SELECT id FROM inserted_question), 'O(log N)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Deleting an element from the end of an array requires no shifting, making its time complexity:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'O(N)', false),
  ((SELECT id FROM inserted_question), 'O(N^2)', false),
  ((SELECT id FROM inserted_question), 'O(1)', true),
  ((SELECT id FROM inserted_question), 'O(log N)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'An array that grows in more than one direction is called a:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Linear array', false),
  ((SELECT id FROM inserted_question), 'Multidimensional array', true),
  ((SELECT id FROM inserted_question), 'Dynamic array', false),
  ((SELECT id FROM inserted_question), 'Single array', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'A two-dimensional (2')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'array is mainly used to represent:', false),
  ((SELECT id FROM inserted_question), 'Single lines of text', false),
  ((SELECT id FROM inserted_question), 'Tables or matrices', true),
  ((SELECT id FROM inserted_question), 'Binary search trees', false),
  ((SELECT id FROM inserted_question), 'Linked lists', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'How is a 2D integer array with 3 rows and 4 columns declared in C++?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'int arr[4][3];', false),
  ((SELECT id FROM inserted_question), 'int arr(3,4);', false),
  ((SELECT id FROM inserted_question), 'int arr[3][4];', true),
  ((SELECT id FROM inserted_question), 'array int[3,4];', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'An N-dimensional array organizes data in a...')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'circular loop', false),
  ((SELECT id FROM inserted_question), 'straight line', false),
  ((SELECT id FROM inserted_question), 'grid-like or multilayered structure', true),
  ((SELECT id FROM inserted_question), 'single row', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'To perform matrix addition, the two matrices must have the same:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Numbers', false),
  ((SELECT id FROM inserted_question), 'Number of rows and columns', true),
  ((SELECT id FROM inserted_question), 'Memory addresses', false),
  ((SELECT id FROM inserted_question), 'Values inside them', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Besides dimensions, matrices being added must also be of the same:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Name', false),
  ((SELECT id FROM inserted_question), 'Type (e.g., both integer)', true),
  ((SELECT id FROM inserted_question), 'Value', false),
  ((SELECT id FROM inserted_question), 'Pointer length', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'The resulting matrix from an addition operation will have:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Double the dimensions', false),
  ((SELECT id FROM inserted_question), 'Half the dimensions', false),
  ((SELECT id FROM inserted_question), 'The same dimensions as the input matrices', true),
  ((SELECT id FROM inserted_question), 'No dimensions', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'Matrix addition is performed by adding:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'All elements together into one sum', false),
  ((SELECT id FROM inserted_question), 'Corresponding elements together', true),
  ((SELECT id FROM inserted_question), 'Only the diagonal elements', false),
  ((SELECT id FROM inserted_question), 'Random elements', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('fds', 'If A = [[1, 2], [3, 4]] and B = [[5, 6], [7, 8]], what is the value of the first element (row 1, col 1) in the resulting matrix?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '5', false),
  ((SELECT id FROM inserted_question), '6', true),
  ((SELECT id FROM inserted_question), '7', false),
  ((SELECT id FROM inserted_question), '8', false);

-- Data for iot

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What is an Embedded System (ES)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'A general-purpose desktop computer', false),
  ((SELECT id FROM inserted_question), 'An electronic system designed to perform one or a limited set of functions', true),
  ((SELECT id FROM inserted_question), 'A software application for mobile phones', false),
  ((SELECT id FROM inserted_question), 'A global network of servers', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which of the following is a characteristic of Embedded Systems?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'High power dissipation', false),
  ((SELECT id FROM inserted_question), 'Unlimited memory', false),
  ((SELECT id FROM inserted_question), 'Should not be alterable by the user', true),
  ((SELECT id FROM inserted_question), 'Large set of functions', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which of the following is an application domain for Embedded Systems?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Cloud storage', false),
  ((SELECT id FROM inserted_question), 'Automobile control', true),
  ((SELECT id FROM inserted_question), 'Social media algorithms', false),
  ((SELECT id FROM inserted_question), 'Web browsers', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What does the acronym "IoT" stand for?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Internet of Technology', false),
  ((SELECT id FROM inserted_question), 'Intranet of Things', false),
  ((SELECT id FROM inserted_question), 'Internet of Things', true),
  ((SELECT id FROM inserted_question), 'Interconnection of Terminals', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'The Internet connects all people, so it is often called the "Internet of People." Because IoT connects all things, it is called the:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Web of Objects', false),
  ((SELECT id FROM inserted_question), 'Internet of Things', true),
  ((SELECT id FROM inserted_question), 'Network of Devices', false),
  ((SELECT id FROM inserted_question), 'Global Machine Network', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'IoT allows objects to communicate and exchange data over a network without requiring:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Wi-Fi', false),
  ((SELECT id FROM inserted_question), 'Human-to-human or human-to-computer interaction', true),
  ((SELECT id FROM inserted_question), 'A power source', false),
  ((SELECT id FROM inserted_question), 'Hardware', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'In the evolution of IoT, what phase came immediately after "Internet of Content" (WWW)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Pre-Internet', false),
  ((SELECT id FROM inserted_question), 'Internet of Things', false),
  ((SELECT id FROM inserted_question), 'Internet of People', false),
  ((SELECT id FROM inserted_question), 'Internet of Services', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which of the following represents the "Internet of People" phase?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Fixed & mobile telephony', false),
  ((SELECT id FROM inserted_question), 'E-mail and Information', false),
  ((SELECT id FROM inserted_question), 'Skype, Facebook, and YouTube', true),
  ((SELECT id FROM inserted_question), 'Identification and tracking', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What was the first glimpse of IoT that emerged in 1982?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'A smart fridge', false),
  ((SELECT id FROM inserted_question), 'A connected toaster', false),
  ((SELECT id FROM inserted_question), 'A vending machine at Carnegie Mellon University', true),
  ((SELECT id FROM inserted_question), 'A smartwatch', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Who coined the term "Internet of Things"?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Steve Jobs', false),
  ((SELECT id FROM inserted_question), 'Kevin Ashton', true),
  ((SELECT id FROM inserted_question), 'Bill Gates', false),
  ((SELECT id FROM inserted_question), 'Tim Berners-Lee', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'In what year was the term "Internet of Things" coined?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '1982', false),
  ((SELECT id FROM inserted_question), '1990', false),
  ((SELECT id FROM inserted_question), '1999', true),
  ((SELECT id FROM inserted_question), '2004', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What early IoT innovation in 1990 allowed users to control it remotely, foreshadowing smart home devices?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'A toaster', true),
  ((SELECT id FROM inserted_question), 'A coffee maker', false),
  ((SELECT id FROM inserted_question), 'A television', false),
  ((SELECT id FROM inserted_question), 'A thermostat', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which company introduced the Smart Fridge in 2000?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Samsung', false),
  ((SELECT id FROM inserted_question), 'LG', true),
  ((SELECT id FROM inserted_question), 'Whirlpool', false),
  ((SELECT id FROM inserted_question), 'GE', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What device introduced IoT to the wearable tech realm in 2004?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Smart glasses', false),
  ((SELECT id FROM inserted_question), 'Smart Ring', false),
  ((SELECT id FROM inserted_question), 'Smart Watch', true),
  ((SELECT id FROM inserted_question), 'Fitness band', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Apple''s iPhone became a game-changer for IoT integration in what year?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '2004', false),
  ((SELECT id FROM inserted_question), '2007', true),
  ((SELECT id FROM inserted_question), '2009', false),
  ((SELECT id FROM inserted_question), '2011', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What technology showcased IoT''s potential in image recognition in 2013?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Amazon Echo', false),
  ((SELECT id FROM inserted_question), 'Tesla Autopilot', false),
  ((SELECT id FROM inserted_question), 'Google Lens', true),
  ((SELECT id FROM inserted_question), 'Smart TV', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Amazon''s Echo, equipped with Alexa, demonstrated the power of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Autonomous driving', false),
  ((SELECT id FROM inserted_question), 'Voice-activated IoT', true),
  ((SELECT id FROM inserted_question), 'Wearable fitness tracking', false),
  ((SELECT id FROM inserted_question), 'Image recognition', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Tesla''s Autopilot system (2015) exemplified IoT in automobiles through:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Better fuel efficiency', false),
  ((SELECT id FROM inserted_question), 'Enhanced audio systems', false),
  ((SELECT id FROM inserted_question), 'Semi-autonomous driving capabilities', true),
  ((SELECT id FROM inserted_question), 'Remote engine starting', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Fetching the latest software updates without manual intervention is an example of which IoT characteristic?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Self Configuring', true),
  ((SELECT id FROM inserted_question), 'Heterogeneity', false),
  ((SELECT id FROM inserted_question), 'Enormous scale', false),
  ((SELECT id FROM inserted_question), 'Safety', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'IoT devices typically consume less power. When not in use, they should automatically be programmed to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Delete data', false),
  ((SELECT id FROM inserted_question), 'Reboot', false),
  ((SELECT id FROM inserted_question), 'Sleep', true),
  ((SELECT id FROM inserted_question), 'Disconnect permanently', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Why are IoT devices powered off periodically when not in use?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'To increase heat generation', false),
  ((SELECT id FROM inserted_question), 'To save bandwidth and battery consumption', true),
  ((SELECT id FROM inserted_question), 'To reset their IP address', false),
  ((SELECT id FROM inserted_question), 'To prevent physical theft', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Devices in the IoT are considered heterogeneous because they:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'All use the exact same software', false),
  ((SELECT id FROM inserted_question), 'Are based on different hardware platforms and networks', true),
  ((SELECT id FROM inserted_question), 'Can only connect to one type of server', false),
  ((SELECT id FROM inserted_question), 'Are built by a single manufacturer', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What characteristic refers to the fact that the number of devices communicating with each other will be massively larger than the current Internet?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Enormous scale', true),
  ((SELECT id FROM inserted_question), 'Dynamic changes', false),
  ((SELECT id FROM inserted_question), 'Inter-connectivity', false),
  ((SELECT id FROM inserted_question), 'Heterogeneity', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'In IoT, what enables network accessibility and compatibility?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Safety', false),
  ((SELECT id FROM inserted_question), 'Connectivity', true),
  ((SELECT id FROM inserted_question), 'Intermittent connectivity', false),
  ((SELECT id FROM inserted_question), 'Storage', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which addressing protocol will no longer be suitable in the upcoming future due to the abundance of physical objects?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'MAC addressing', false),
  ((SELECT id FROM inserted_question), 'IP-based addressing', true),
  ((SELECT id FROM inserted_question), 'URL routing', false),
  ((SELECT id FROM inserted_question), 'Postal addressing', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'A device connected right now may not be connected in another instant. This describes which IoT characteristic?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Static connection', false),
  ((SELECT id FROM inserted_question), 'Continuous streaming', false),
  ((SELECT id FROM inserted_question), 'Intermittent connectivity', true),
  ((SELECT id FROM inserted_question), 'Permanent addressing', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What acts as the "brain" of an IoT device, containing a processor core, memory, and programmable I/O?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Sensor', false),
  ((SELECT id FROM inserted_question), 'Actuator', false),
  ((SELECT id FROM inserted_question), 'Control unit', true),
  ((SELECT id FROM inserted_question), 'Gateway', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which hardware components detect changes in an environment and collect data?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Cloud servers', false),
  ((SELECT id FROM inserted_question), 'Actuators', false),
  ((SELECT id FROM inserted_question), 'Sensors', true),
  ((SELECT id FROM inserted_question), 'Gateways', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What type of sensor produces a continuous output signal that varies proportionally to the measured quantity?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Digital sensor', false),
  ((SELECT id FROM inserted_question), 'Analog sensor', true),
  ((SELECT id FROM inserted_question), 'Binary sensor', false),
  ((SELECT id FROM inserted_question), 'Discrete sensor', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What type of sensor outputs a discrete signal, either in binary form (0 or 1)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Analog sensor', false),
  ((SELECT id FROM inserted_question), 'Continuous sensor', false),
  ((SELECT id FROM inserted_question), 'Digital sensor', true),
  ((SELECT id FROM inserted_question), 'Proportional sensor', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which device converts a signal from one physical structure (or energy type) to another?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Processor', false),
  ((SELECT id FROM inserted_question), 'Controller', false),
  ((SELECT id FROM inserted_question), 'Gateway', false),
  ((SELECT id FROM inserted_question), 'Transducer', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Thermistors, thermocouples, and RTDs are examples of which type of sensor?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Pressure sensors', false),
  ((SELECT id FROM inserted_question), 'Temperature sensors', true),
  ((SELECT id FROM inserted_question), 'Proximity sensors', false),
  ((SELECT id FROM inserted_question), 'Image sensors', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which sensors detect the presence or absence of objects near them without physical contact?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Pressure sensors', false),
  ((SELECT id FROM inserted_question), 'Proximity sensors', true),
  ((SELECT id FROM inserted_question), 'Humidity sensors', false),
  ((SELECT id FROM inserted_question), 'Gas sensors', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'The BMP180 found in cell phones is an example of a digital:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Temperature sensor', false),
  ((SELECT id FROM inserted_question), 'Image sensor', false),
  ((SELECT id FROM inserted_question), 'Pressure sensor', true),
  ((SELECT id FROM inserted_question), 'Proximity sensor', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Residual chlorine sensors, turbidity sensors, and pH sensors are examples of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Water quality sensors', true),
  ((SELECT id FROM inserted_question), 'Smoke sensors', false),
  ((SELECT id FROM inserted_question), 'Motion sensors', false),
  ((SELECT id FROM inserted_question), 'Gyroscope sensors', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which sensors monitor air quality for the presence of toxic or hazardous substances?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Infrared sensors', false),
  ((SELECT id FROM inserted_question), 'Chemical and gas sensors', true),
  ((SELECT id FROM inserted_question), 'Optical sensors', false),
  ((SELECT id FROM inserted_question), 'Level sensors', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Passive infrared (PIR), ultrasonic, and microwave are standard types of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Motion sensors', true),
  ((SELECT id FROM inserted_question), 'Temperature sensors', false),
  ((SELECT id FROM inserted_question), 'Humidity sensors', false),
  ((SELECT id FROM inserted_question), 'Image sensors', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which sensor would be used to determine the amount of waste in a dumpster?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Accelerometer', false),
  ((SELECT id FROM inserted_question), 'Image sensor', false),
  ((SELECT id FROM inserted_question), 'Level sensor', true),
  ((SELECT id FROM inserted_question), 'Gyroscope', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Charge-coupled devices (CC')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'and complementary metal-oxide semiconductors (CMOS) are used in:', false),
  ((SELECT id FROM inserted_question), 'Temperature sensors', false),
  ((SELECT id FROM inserted_question), 'Image sensors', true),
  ((SELECT id FROM inserted_question), 'Humidity sensors', false),
  ((SELECT id FROM inserted_question), 'Chemical sensors', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which sensors measure the amount of water vapor in the air?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Level sensors', false),
  ((SELECT id FROM inserted_question), 'Proximity sensors', false),
  ((SELECT id FROM inserted_question), 'Humidity sensors', true),
  ((SELECT id FROM inserted_question), 'Optical sensors', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which sensor measures the acceleration of an object and detects changes in velocity, such as tilt or shake?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Gyroscope', false),
  ((SELECT id FROM inserted_question), 'Accelerometer', true),
  ((SELECT id FROM inserted_question), 'Proximity sensor', false),
  ((SELECT id FROM inserted_question), 'Level sensor', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which sensor measures the angular rate or the speed of rotation around an axis?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Accelerometer', false),
  ((SELECT id FROM inserted_question), 'Gyroscope sensor', true),
  ((SELECT id FROM inserted_question), 'Optical sensor', false),
  ((SELECT id FROM inserted_question), 'Infrared sensor', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Fiber optics, photodetectors, and pyrometers are examples of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Chemical sensors', false),
  ((SELECT id FROM inserted_question), 'Water quality sensors', false),
  ((SELECT id FROM inserted_question), 'Optical sensors', true),
  ((SELECT id FROM inserted_question), 'Smoke sensors', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What component is responsible for moving and controlling a mechanism or system (e.g., opening a valve)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Sensor', false),
  ((SELECT id FROM inserted_question), 'Actuator', true),
  ((SELECT id FROM inserted_question), 'Router', false),
  ((SELECT id FROM inserted_question), 'Gateway', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'A servo motor is a common example of an:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Image sensor', false),
  ((SELECT id FROM inserted_question), 'Actuator', true),
  ((SELECT id FROM inserted_question), 'IoT server', false),
  ((SELECT id FROM inserted_question), 'Access point', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'In an IoT system, which component generates the control signals for the actuators based on the actions needed?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The sensors', false),
  ((SELECT id FROM inserted_question), 'The mechanical valve', false),
  ((SELECT id FROM inserted_question), 'The controller ("brain")', true),
  ((SELECT id FROM inserted_question), 'The user interface', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What represents the front end of IoT devices and is truly the "things" in IoT?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Processors', false),
  ((SELECT id FROM inserted_question), 'Sensors', true),
  ((SELECT id FROM inserted_question), 'Cloud storage', false),
  ((SELECT id FROM inserted_question), 'Applications', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which building block serves as the "brain" of the IoT system to process raw data into meaningful information?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Gateways', false),
  ((SELECT id FROM inserted_question), 'Sensors', false),
  ((SELECT id FROM inserted_question), 'Processors', true),
  ((SELECT id FROM inserted_question), 'Applications', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which building block provides the interface for users to interact with the collected data?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Gateways', false),
  ((SELECT id FROM inserted_question), 'Applications', true),
  ((SELECT id FROM inserted_question), 'Processors', false),
  ((SELECT id FROM inserted_question), 'Sensors', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'The main task of which component is to route processed data and transfer it to databases or network storage?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Gateways', true),
  ((SELECT id FROM inserted_question), 'Sensors', false),
  ((SELECT id FROM inserted_question), 'Actuators', false),
  ((SELECT id FROM inserted_question), 'End-users', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'An IoT Gateway provides a bridge between different communication technologies, connecting the cloud and the:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'End user', false),
  ((SELECT id FROM inserted_question), 'Controller (sensors/devices)', true),
  ((SELECT id FROM inserted_question), 'Database server exclusively', false),
  ((SELECT id FROM inserted_question), 'Mobile application', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Why do energy-constrained IoT devices typically communicate with a Gateway first rather than directly to the cloud?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'To increase internet speed', false),
  ((SELECT id FROM inserted_question), 'Direct cloud connection won''t be effective in terms of battery power', true),
  ((SELECT id FROM inserted_question), 'To bypass security protocols', false),
  ((SELECT id FROM inserted_question), 'To avoid using short-range networks', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which of the following is a key functionality of an IoT Gateway?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Displaying graphics to the user', false),
  ((SELECT id FROM inserted_question), 'Generating physical movement', false),
  ((SELECT id FROM inserted_question), 'Protocol translation and data aggregation', true),
  ((SELECT id FROM inserted_question), 'Manufacturing hardware', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'A gateway can be a software program or a:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Typical hardware device', true),
  ((SELECT id FROM inserted_question), 'Cloud server', false),
  ((SELECT id FROM inserted_question), 'Mechanical actuator', false),
  ((SELECT id FROM inserted_question), 'Human interface', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Gateways help IoT devices by performing data computing at the:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Core level', false),
  ((SELECT id FROM inserted_question), 'Application level', false),
  ((SELECT id FROM inserted_question), 'Edge level', true),
  ((SELECT id FROM inserted_question), 'Server level', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What is a virtual space made up of a network of servers that stores and manages data from connected devices?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The Gateway', false),
  ((SELECT id FROM inserted_question), 'The Cloud', true),
  ((SELECT id FROM inserted_question), 'The Actuator', false),
  ((SELECT id FROM inserted_question), 'The UI', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which protocol is commonly used for communication between IoT devices and the cloud?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'HTTP', false),
  ((SELECT id FROM inserted_question), 'FTP', false),
  ((SELECT id FROM inserted_question), 'MQTT (Message Queue Telemetry Transport)', true),
  ((SELECT id FROM inserted_question), 'SMTP', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which cloud deployment model builds and maintains its own underlying infrastructure for internal users?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Public Cloud', false),
  ((SELECT id FROM inserted_question), 'Private Cloud', true),
  ((SELECT id FROM inserted_question), 'Community Cloud', false),
  ((SELECT id FROM inserted_question), 'Hybrid Cloud', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Amazon EC2, IBM, Azure, and GCP are examples of which type of cloud?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Private Cloud', false),
  ((SELECT id FROM inserted_question), 'Hybrid Cloud', false),
  ((SELECT id FROM inserted_question), 'Public Cloud', true),
  ((SELECT id FROM inserted_question), 'Community Cloud', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'A unified, automated environment that combines public cloud services and an on-premises private cloud is a:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Community cloud', false),
  ((SELECT id FROM inserted_question), 'Hybrid cloud', true),
  ((SELECT id FROM inserted_question), 'Distributed cloud', false),
  ((SELECT id FROM inserted_question), 'Edge cloud', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which cloud model supports a specific group with the same mission, policy, and security requirements?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Public cloud', false),
  ((SELECT id FROM inserted_question), 'Hybrid cloud', false),
  ((SELECT id FROM inserted_question), 'Community cloud', true),
  ((SELECT id FROM inserted_question), 'Private cloud', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Delivering services and applications over the Internet so users don''t have to install and maintain software is called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Infrastructure as a Service (IaaS)', false),
  ((SELECT id FROM inserted_question), 'Platform as a Service (PaaS)', false),
  ((SELECT id FROM inserted_question), 'Software as a Service (SaaS)', true),
  ((SELECT id FROM inserted_question), 'Hardware as a Service (HaaS)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which cloud service provides a platform and environment to allow developers to build applications over the internet?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'PaaS', true),
  ((SELECT id FROM inserted_question), 'SaaS', false),
  ((SELECT id FROM inserted_question), 'IaaS', false),
  ((SELECT id FROM inserted_question), 'HaaS', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Infrastructure as a Service (IaaS) is also commonly referred to as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Software as a Service', false),
  ((SELECT id FROM inserted_question), 'Hardware as a Service (HaaS)', true),
  ((SELECT id FROM inserted_question), 'Platform as a Service', false),
  ((SELECT id FROM inserted_question), 'Application as a Service', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What platform connects physical devices to the internet, allowing them to communicate and share data?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Web server', false),
  ((SELECT id FROM inserted_question), 'IoT server', true),
  ((SELECT id FROM inserted_question), 'Mail server', false),
  ((SELECT id FROM inserted_question), 'Print server', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which type of server stores and manages data files so other computers on the same network can access them?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Web server', false),
  ((SELECT id FROM inserted_question), 'File server', true),
  ((SELECT id FROM inserted_question), 'Print server', false),
  ((SELECT id FROM inserted_question), 'Mail server', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which of the following is an example of an IoT Cloud platform?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Amazon Web Services (AWS) IoT', true),
  ((SELECT id FROM inserted_question), 'Microsoft Word', false),
  ((SELECT id FROM inserted_question), 'Adobe Photoshop', false),
  ((SELECT id FROM inserted_question), 'Linux OS', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'IoT cloud computing is convenient because costs typically vary depending on:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The color of the devices', false),
  ((SELECT id FROM inserted_question), 'The user''s location', false),
  ((SELECT id FROM inserted_question), 'The usage statistics (you pay for what you use)', true),
  ((SELECT id FROM inserted_question), 'The time of day', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'The process of collecting, processing, and analyzing data generated by IoT devices is known as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Cloud storage', false),
  ((SELECT id FROM inserted_question), 'Device management', false),
  ((SELECT id FROM inserted_question), 'IoT analytics', true),
  ((SELECT id FROM inserted_question), 'Protocol translation', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'IoT data is constantly growing and is considered a subset of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Metadata', false),
  ((SELECT id FROM inserted_question), 'Big Data', true),
  ((SELECT id FROM inserted_question), 'Micro Data', false),
  ((SELECT id FROM inserted_question), 'Relational Data', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'The "3Vs model" of big data and IoT data consists of Volume, Variety, and:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Velocity', true),
  ((SELECT id FROM inserted_question), 'Validity', false),
  ((SELECT id FROM inserted_question), 'Value', false),
  ((SELECT id FROM inserted_question), 'Visualization', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'In the 3Vs model, which "V" refers to the amount of data (e.g., Terabytes, Records)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Velocity', false),
  ((SELECT id FROM inserted_question), 'Variety', false),
  ((SELECT id FROM inserted_question), 'Volume', true),
  ((SELECT id FROM inserted_question), 'Variability', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which "V" refers to the speed at which data is processed (e.g., Real-time, Streams)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Volume', false),
  ((SELECT id FROM inserted_question), 'Velocity', true),
  ((SELECT id FROM inserted_question), 'Variety', false),
  ((SELECT id FROM inserted_question), 'Veracity', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which "V" includes structured, unstructured, and semi-structured types of data?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Volume', false),
  ((SELECT id FROM inserted_question), 'Velocity', false),
  ((SELECT id FROM inserted_question), 'Variety', true),
  ((SELECT id FROM inserted_question), 'Verification', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Big Data typically deals with human-generated data (like social media), while IoT primarily involves analyzing:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Handwritten notes', false),
  ((SELECT id FROM inserted_question), 'Machine-generated data (such as sensors)', true),
  ((SELECT id FROM inserted_question), 'Printed books', false),
  ((SELECT id FROM inserted_question), 'Voice recordings only', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'A significant challenge in IoT analytics is having "Too much data," meaning it may not be possible to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Delete it', false),
  ((SELECT id FROM inserted_question), 'Move it over the network to a central location', true),
  ((SELECT id FROM inserted_question), 'Encrypt it', false),
  ((SELECT id FROM inserted_question), 'Print it', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'If an attacker compromises a weak outdoor sensor to adjust indoor temperature incorrectly, this falls under which IoT analytics challenge?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Too much data', false),
  ((SELECT id FROM inserted_question), 'Power consumption', false),
  ((SELECT id FROM inserted_question), 'Security', true),
  ((SELECT id FROM inserted_question), 'Interoperability', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Sensors that send false readings to the system due to a low battery or software bug are referred to as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Malicious nodes', false),
  ((SELECT id FROM inserted_question), 'Misbehaving devices', true),
  ((SELECT id FROM inserted_question), 'Gateways', false),
  ((SELECT id FROM inserted_question), 'Actuators', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What is the visible, tangible portion of the IoT device that allows users to view, monitor, and manipulate data?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Sensor', false),
  ((SELECT id FROM inserted_question), 'Gateway', false),
  ((SELECT id FROM inserted_question), 'Data Processing Layer', false),
  ((SELECT id FROM inserted_question), 'User Interface (UI)', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'According to the document, the architecture of IoT is divided into how many different layers?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '2', false),
  ((SELECT id FROM inserted_question), '3', false),
  ((SELECT id FROM inserted_question), '4', true),
  ((SELECT id FROM inserted_question), '5', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which layer of the IoT architecture is responsible for collecting data using sensors and actuators?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Network Layer', false),
  ((SELECT id FROM inserted_question), 'Data Processing Layer', false),
  ((SELECT id FROM inserted_question), 'Sensing Layer', true),
  ((SELECT id FROM inserted_question), 'Application Layer', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which layer provides communication and connectivity using technologies like WiFi, Bluetooth, and cellular networks?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Application Layer', false),
  ((SELECT id FROM inserted_question), 'Data Processing Layer', false),
  ((SELECT id FROM inserted_question), 'Sensing Layer', false),
  ((SELECT id FROM inserted_question), 'Network Layer', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which layer is responsible for receiving raw data, analyzing it, and making it available for further action?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Sensing Layer', false),
  ((SELECT id FROM inserted_question), 'Data processing Layer', true),
  ((SELECT id FROM inserted_question), 'Network Layer', false),
  ((SELECT id FROM inserted_question), 'Actuator Layer', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'A "data lake" used for storing raw data from IoT devices is an example of technology found in which layer?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Network Layer', false),
  ((SELECT id FROM inserted_question), 'Sensing Layer', false),
  ((SELECT id FROM inserted_question), 'Data processing Layer', true),
  ((SELECT id FROM inserted_question), 'Application Layer', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which layer is the topmost layer that interacts directly with the end-user through mobile apps and web portals?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Data processing Layer', false),
  ((SELECT id FROM inserted_question), 'Network Layer', false),
  ((SELECT id FROM inserted_question), 'Sensing Layer', false),
  ((SELECT id FROM inserted_question), 'Application Layer', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which of the following is listed as an advantage of IoT?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'High initial investment costs', false),
  ((SELECT id FROM inserted_question), 'Complexity of maintenance', false),
  ((SELECT id FROM inserted_question), 'Easiest internet connectivity', true),
  ((SELECT id FROM inserted_question), 'Limited standardization', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Which of the following is a disadvantage of IoT?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Executing multiple tasks at a time', false),
  ((SELECT id FROM inserted_question), 'Security concerns and potential for data breaches', true),
  ((SELECT id FROM inserted_question), 'Increased battery life on all devices', false),
  ((SELECT id FROM inserted_question), 'Perfect interoperability', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'High initial investment costs and limited battery life on some devices are considered:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Disadvantages of IoT', true),
  ((SELECT id FROM inserted_question), 'Advantages of IoT', false),
  ((SELECT id FROM inserted_question), 'Key Components of IoT', false),
  ((SELECT id FROM inserted_question), 'Data Processing techniques', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Smart grids, smart cities, and home automation are examples of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'IoT building blocks', false),
  ((SELECT id FROM inserted_question), 'Disadvantages of IoT', false),
  ((SELECT id FROM inserted_question), 'Modern Applications of IoT', true),
  ((SELECT id FROM inserted_question), 'Cloud computing models', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Biochip transponders for farm animals and heart monitoring implants (like pacemakers) belong to which IoT application area?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Smart cities', false),
  ((SELECT id FROM inserted_question), 'Traffic monitoring', false),
  ((SELECT id FROM inserted_question), 'Healthcare', true),
  ((SELECT id FROM inserted_question), 'Earthquake detection', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What security challenge arises because IoT manufacturers are eager to deliver products fast without enough security checks?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Excessive encryption', false),
  ((SELECT id FROM inserted_question), 'Insufficient testing and updating', true),
  ((SELECT id FROM inserted_question), 'Too much interoperability', false),
  ((SELECT id FROM inserted_question), 'High power consumption', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What common factory setting leaves nearly all IoT devices vulnerable to hacking and brute force attacks?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Lack of a screen', false),
  ((SELECT id FROM inserted_question), 'Default passwords', true),
  ((SELECT id FROM inserted_question), 'Unchangeable MAC addresses', false),
  ((SELECT id FROM inserted_question), 'Fast processors', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'What type of malware uses encryption to lock out users from devices and demands payment to unlock the data?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Spyware', false),
  ((SELECT id FROM inserted_question), 'Adware', false),
  ((SELECT id FROM inserted_question), 'Ransomware', true),
  ((SELECT id FROM inserted_question), 'Trojan', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Hackers hijacking a computer camera to take pictures and demanding payment is an example of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Device scaling', false),
  ((SELECT id FROM inserted_question), 'Ransomware', true),
  ((SELECT id FROM inserted_question), 'Interoperability', false),
  ((SELECT id FROM inserted_question), 'Network routing', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'The ability of different systems, devices, or components to work together seamlessly is known as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Scalability', false),
  ((SELECT id FROM inserted_question), 'Reliability', false),
  ((SELECT id FROM inserted_question), 'Interoperability', true),
  ((SELECT id FROM inserted_question), 'Security', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Protecting the communication between IoT devices and the network from cyber attacks is known as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Device security', false),
  ((SELECT id FROM inserted_question), 'Data security', false),
  ((SELECT id FROM inserted_question), 'Network security', true),
  ((SELECT id FROM inserted_question), 'Privacy', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'The ability of a system to handle increasing workloads or numbers of users without a significant decline in performance is called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Reliability', false),
  ((SELECT id FROM inserted_question), 'Scalability', true),
  ((SELECT id FROM inserted_question), 'Interoperability', false),
  ((SELECT id FROM inserted_question), 'Power management', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Effectively managing and storing the massive amounts of data generated by a rapidly growing number of IoT devices is a challenge of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Reliability', false),
  ((SELECT id FROM inserted_question), 'Scalability', true),
  ((SELECT id FROM inserted_question), 'Power consumption', false),
  ((SELECT id FROM inserted_question), 'Interoperability', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'The ability of a system to perform its intended function consistently and without failure over time is known as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Scalability', false),
  ((SELECT id FROM inserted_question), 'Interoperability', false),
  ((SELECT id FROM inserted_question), 'Reliability', true),
  ((SELECT id FROM inserted_question), 'Network capacity', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('iot', 'Implementing techniques such as "sleep modes" to reduce energy usage addresses which design challenge?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Privacy', false),
  ((SELECT id FROM inserted_question), 'Interoperability', false),
  ((SELECT id FROM inserted_question), 'Power consumption', true),
  ((SELECT id FROM inserted_question), 'Data storage', false);

-- Data for oop

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is a programming paradigm?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'A specific software tool', false),
  ((SELECT id FROM inserted_question), 'A style and method of writing or organizing a program', true),
  ((SELECT id FROM inserted_question), 'A hardware component', false),
  ((SELECT id FROM inserted_question), 'A built-in C++ library', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which paradigm divides the whole program into multiple functions or modules?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Object-Oriented Programming', false),
  ((SELECT id FROM inserted_question), 'Declarative Programming', false),
  ((SELECT id FROM inserted_question), 'Procedural Programming', true),
  ((SELECT id FROM inserted_question), 'Logic Programming', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Procedural programming follows which execution approach?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Bottom-up approach', false),
  ((SELECT id FROM inserted_question), 'Top-down approach', true),
  ((SELECT id FROM inserted_question), 'Random approach', false),
  ((SELECT id FROM inserted_question), 'Center-out approach', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which of the following is an example of a procedural programming language?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'C++', false),
  ((SELECT id FROM inserted_question), 'Java', false),
  ((SELECT id FROM inserted_question), 'Python', false),
  ((SELECT id FROM inserted_question), 'C', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'In Object-Oriented Programming (OOP), the program is completely divided into:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Multiple functions', false),
  ((SELECT id FROM inserted_question), 'Multiple sub-routines', false),
  ((SELECT id FROM inserted_question), 'Multiple classes and objects', true),
  ((SELECT id FROM inserted_question), 'Multiple loops', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What execution approach does Object-Oriented Programming follow?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Top-down approach', false),
  ((SELECT id FROM inserted_question), 'Bottom-up approach', true),
  ((SELECT id FROM inserted_question), 'Linear approach', false),
  ((SELECT id FROM inserted_question), 'Horizontal approach', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which of the following is NOT a feature of Object-Oriented Programming?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Polymorphism', false),
  ((SELECT id FROM inserted_question), 'Inheritance', false),
  ((SELECT id FROM inserted_question), 'Data hiding', false),
  ((SELECT id FROM inserted_question), 'Top-down execution', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which language supports Object-Oriented Programming?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'C++', true),
  ((SELECT id FROM inserted_question), 'Pascal', false),
  ((SELECT id FROM inserted_question), 'Cobol', false),
  ((SELECT id FROM inserted_question), 'C', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'In the bottom-up approach of OOP, what is usually written at the top of the program structure?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The main() function', false),
  ((SELECT id FROM inserted_question), 'Classes', true),
  ((SELECT id FROM inserted_question), 'The return statement', false),
  ((SELECT id FROM inserted_question), 'Pointers', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Why is OOP considered highly important in today''s world?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Because it is older than procedural programming', false),
  ((SELECT id FROM inserted_question), 'Because the market runs on it and it handles real-world problems better', true),
  ((SELECT id FROM inserted_question), 'Because it does not use variables', false),
  ((SELECT id FROM inserted_question), 'Because it is only used for hardware design', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Who developed the C++ language?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Dennis Ritchie', false),
  ((SELECT id FROM inserted_question), 'James Gosling', false),
  ((SELECT id FROM inserted_question), 'Bjarne Stroustrup', true),
  ((SELECT id FROM inserted_question), 'Guido van Rossum', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Where was C++ developed?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Microsoft HQ', false),
  ((SELECT id FROM inserted_question), 'AT&T Bell Labs', true),
  ((SELECT id FROM inserted_question), 'MIT', false),
  ((SELECT id FROM inserted_question), 'Google', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'In which decade was C++ developed?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Early 1970s', false),
  ((SELECT id FROM inserted_question), 'Early 1980s', true),
  ((SELECT id FROM inserted_question), 'Early 1990s', false),
  ((SELECT id FROM inserted_question), 'Early 2000s', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'C++ is considered a superset of which programming language?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Java', false),
  ((SELECT id FROM inserted_question), 'Python', false),
  ((SELECT id FROM inserted_question), 'Pascal', false),
  ((SELECT id FROM inserted_question), 'C', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which C++ keyword is used to display output on the screen?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'print', false),
  ((SELECT id FROM inserted_question), 'cout', true),
  ((SELECT id FROM inserted_question), 'cin', false),
  ((SELECT id FROM inserted_question), 'input', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which C++ keyword is used to take input from the user?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'cout', false),
  ((SELECT id FROM inserted_question), 'scan', false),
  ((SELECT id FROM inserted_question), 'cin', true),
  ((SELECT id FROM inserted_question), 'get', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which of the following is an application area for C++?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Operating Systems', false),
  ((SELECT id FROM inserted_question), 'Mobile games', false),
  ((SELECT id FROM inserted_question), 'Web browsers', false),
  ((SELECT id FROM inserted_question), 'All of the above', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which popular GUI application was developed using C++?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'MS Word (MS Office)', false),
  ((SELECT id FROM inserted_question), 'Adobe Photoshop', false),
  ((SELECT id FROM inserted_question), 'Notepad', false),
  ((SELECT id FROM inserted_question), 'All of the above', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Database Management Software (DBMS) like Oracle and MySQL are designed in which language?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'HTML', false),
  ((SELECT id FROM inserted_question), 'CSS', false),
  ((SELECT id FROM inserted_question), 'C++', true),
  ((SELECT id FROM inserted_question), 'JavaScript', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'How is C++ used in relation to language translators?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'It replaces HTML', false),
  ((SELECT id FROM inserted_question), 'It is used to build compilers and assemblers', true),
  ((SELECT id FROM inserted_question), 'It translates English to Spanish', false),
  ((SELECT id FROM inserted_question), 'It cannot be used for translation', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Why is C++ considered a fast language?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'It does not use memory', false),
  ((SELECT id FROM inserted_question), 'It is an interpreted language', false),
  ((SELECT id FROM inserted_question), 'It is a compiled language', true),
  ((SELECT id FROM inserted_question), 'It only uses integers', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Because C++ supports both procedural programming and object-oriented programming, it is called a:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Single-paradigm language', false),
  ((SELECT id FROM inserted_question), 'Multi-paradigm language', true),
  ((SELECT id FROM inserted_question), 'Low-level only language', false),
  ((SELECT id FROM inserted_question), 'Scripting language', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'The ability of a C++ program to run on Windows, Linux, and Mac means it is:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Platform independent', true),
  ((SELECT id FROM inserted_question), 'Platform dependent', false),
  ((SELECT id FROM inserted_question), 'Hardware specific', false),
  ((SELECT id FROM inserted_question), 'Slow', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'C++ provides built-in libraries (like <iostream>, <cmath>). This feature is known as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Exception handling', false),
  ((SELECT id FROM inserted_question), 'Rich Library Support', true),
  ((SELECT id FROM inserted_question), 'Pointers', false),
  ((SELECT id FROM inserted_question), 'Inheritance', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'C++ provides dynamic memory allocation using which keywords?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'add and remove', false),
  ((SELECT id FROM inserted_question), 'start and stop', false),
  ((SELECT id FROM inserted_question), 'new and delete', true),
  ((SELECT id FROM inserted_question), 'create and destroy', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Using the same function name for different tasks is called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Function overriding', false),
  ((SELECT id FROM inserted_question), 'Function overloading', true),
  ((SELECT id FROM inserted_question), 'Operator overloading', false),
  ((SELECT id FROM inserted_question), 'Exception handling', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Redefining operators (like +, -, ) for user-defined types is known as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Operator overloading', true),
  ((SELECT id FROM inserted_question), 'Pointer manipulation', false),
  ((SELECT id FROM inserted_question), 'Type casting', false),
  ((SELECT id FROM inserted_question), 'Dynamic allocation', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which feature in C++ allows for direct memory handling?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Classes', false),
  ((SELECT id FROM inserted_question), 'Exception handling', false),
  ((SELECT id FROM inserted_question), 'Pointers', true),
  ((SELECT id FROM inserted_question), 'Strings', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is the combination of high-level and low-level features in C++ called?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'High level + low level language', true),
  ((SELECT id FROM inserted_question), 'Pure machine language', false),
  ((SELECT id FROM inserted_question), 'Assembly language', false),
  ((SELECT id FROM inserted_question), 'Binary language', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What feature handles unexpected runtime errors in C++?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Dynamic initialization', false),
  ((SELECT id FROM inserted_question), 'Function overloading', false),
  ((SELECT id FROM inserted_question), 'Exception handling', true),
  ((SELECT id FROM inserted_question), 'Encapsulation', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which symbol is used to create a single-line comment in C++?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '/*', true),
  ((SELECT id FROM inserted_question), '//', false),
  ((SELECT id FROM inserted_question), '#', false),
  ((SELECT id FROM inserted_question), '``', false),
  ((SELECT id FROM inserted_question), '## ##', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Why do programmers use comments?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'To make code execute faster', false),
  ((SELECT id FROM inserted_question), 'To compile the program', false),
  ((SELECT id FROM inserted_question), 'To explain logic and make code easy to understand', true),
  ((SELECT id FROM inserted_question), 'To declare variables', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'The << operator used with cout is known as the:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Extraction operator', false),
  ((SELECT id FROM inserted_question), 'Insertion (or Put-to) operator', true),
  ((SELECT id FROM inserted_question), 'Ternary operator', false),
  ((SELECT id FROM inserted_question), 'Assignment operator', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'The >> operator used with cin is known as the:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Extraction (or Get-from) operator', true),
  ((SELECT id FROM inserted_question), 'Insertion operator', false),
  ((SELECT id FROM inserted_question), 'Logical operator', false),
  ((SELECT id FROM inserted_question), 'Bitwise operator', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is the equivalent of C++''s cout in the C language?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'scanf', false),
  ((SELECT id FROM inserted_question), 'print', false),
  ((SELECT id FROM inserted_question), 'printf', true),
  ((SELECT id FROM inserted_question), 'echo', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is the equivalent of C++''s cin in the C language?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'printf', false),
  ((SELECT id FROM inserted_question), 'scanf', true),
  ((SELECT id FROM inserted_question), 'read', false),
  ((SELECT id FROM inserted_question), 'input', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What does the \n sequence do when used inside a cout statement?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Prints a number', false),
  ((SELECT id FROM inserted_question), 'Adds a space', false),
  ((SELECT id FROM inserted_question), 'Moves the output to a new line', true),
  ((SELECT id FROM inserted_question), 'Stops the program', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What header file must be included to use cin and cout?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '<stdio.h>', false),
  ((SELECT id FROM inserted_question), '<math.h>', false),
  ((SELECT id FROM inserted_question), '<string>', false),
  ((SELECT id FROM inserted_question), '<iostream>', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What happens if you put text inside double quotes (e.g., "Sum=") in a cout statement?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'It prints the exact statement as it is on the screen', true),
  ((SELECT id FROM inserted_question), 'It triggers an error', false),
  ((SELECT id FROM inserted_question), 'It calculates the sum automatically', false),
  ((SELECT id FROM inserted_question), 'It takes input from the user', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is used as a container to store names (like variables and functions) to avoid naming confusion?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Header file', false),
  ((SELECT id FROM inserted_question), 'namespace', true),
  ((SELECT id FROM inserted_question), 'Macro', false),
  ((SELECT id FROM inserted_question), 'int main()', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which namespace contains standard built-in functions like cin, cout, and endl?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'std', true),
  ((SELECT id FROM inserted_question), 'iostream', false),
  ((SELECT id FROM inserted_question), 'main', false),
  ((SELECT id FROM inserted_question), 'system', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What punctuation mark MUST end every C++ statement?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Colon :', false),
  ((SELECT id FROM inserted_question), 'Comma ,', false),
  ((SELECT id FROM inserted_question), 'Semicolon ;', true),
  ((SELECT id FROM inserted_question), 'Period .', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which line tells the compiler to include the input/output stream library?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'import iostream;', false),
  ((SELECT id FROM inserted_question), '#include <iostream>', true),
  ((SELECT id FROM inserted_question), 'using namespace std;', false),
  ((SELECT id FROM inserted_question), 'include (iostream)', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Where does the actual execution of a C++ program start?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '#include', false),
  ((SELECT id FROM inserted_question), '#define', false),
  ((SELECT id FROM inserted_question), 'int main()', true),
  ((SELECT id FROM inserted_question), 'return 0;', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What does return 0; signify at the end of the main() function?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The program crashed', false),
  ((SELECT id FROM inserted_question), 'The program exited successfully', true),
  ((SELECT id FROM inserted_question), 'The program is looping', false),
  ((SELECT id FROM inserted_question), 'The result is zero', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'A statement that declares a variable (e.g., int age;) is known as a(n):')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Assignment Statement', false),
  ((SELECT id FROM inserted_question), 'Declarative Statement', true),
  ((SELECT id FROM inserted_question), 'Input Statement', false),
  ((SELECT id FROM inserted_question), 'Control Statement', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'A statement that assigns a value to a variable (e.g., age = 20;) is called a(n):')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Declarative Statement', false),
  ((SELECT id FROM inserted_question), 'Output Statement', false),
  ((SELECT id FROM inserted_question), 'Control Statement', false),
  ((SELECT id FROM inserted_question), 'Assignment Statement', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Statements like if, for, and while that manage the flow of the program are called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Control Statements', true),
  ((SELECT id FROM inserted_question), 'Declarative Statements', false),
  ((SELECT id FROM inserted_question), 'Input Statements', false),
  ((SELECT id FROM inserted_question), 'Output Statements', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Constants that repeat many times in a program can be defined globally using:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'int main()', false),
  ((SELECT id FROM inserted_question), 'Macros (e.g., #define)', true),
  ((SELECT id FROM inserted_question), 'using namespace', false),
  ((SELECT id FROM inserted_question), 'return', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is the smallest meaningful element of a C++ program?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Function', false),
  ((SELECT id FROM inserted_question), 'Class', false),
  ((SELECT id FROM inserted_question), 'Token', true),
  ((SELECT id FROM inserted_question), 'Statement', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Reserved words that have a fixed meaning known to the compiler are called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Identifiers', false),
  ((SELECT id FROM inserted_question), 'Keywords', true),
  ((SELECT id FROM inserted_question), 'Punctuators', false),
  ((SELECT id FROM inserted_question), 'Strings', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which of the following is true about C++ keywords?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'They must be in uppercase', false),
  ((SELECT id FROM inserted_question), 'They must be in lowercase', true),
  ((SELECT id FROM inserted_question), 'They can contain spaces', false),
  ((SELECT id FROM inserted_question), 'They can be used as variable names', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Can a keyword (like for or int) be used as a variable name?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Yes, always', false),
  ((SELECT id FROM inserted_question), 'Yes, if it is capitalized', false),
  ((SELECT id FROM inserted_question), 'No, never', true),
  ((SELECT id FROM inserted_question), 'Only in OOP', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'The unique name given to entities like variables, functions, or classes is called an:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Identifier', true),
  ((SELECT id FROM inserted_question), 'Operator', false),
  ((SELECT id FROM inserted_question), 'Constant', false),
  ((SELECT id FROM inserted_question), 'Punctuator', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which of the following is a rule for naming identifiers?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Can start with a number', false),
  ((SELECT id FROM inserted_question), 'Spaces are allowed', false),
  ((SELECT id FROM inserted_question), 'Can start with a letter or underscore', true),
  ((SELECT id FROM inserted_question), 'Keywords are allowed', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which of the following is a VALID variable name (identifier)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '1age', false),
  ((SELECT id FROM inserted_question), 'total marks', false),
  ((SELECT id FROM inserted_question), 'int', false),
  ((SELECT id FROM inserted_question), 'total_marks', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'A value that cannot be changed during the execution of a program is called a:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Variable', false),
  ((SELECT id FROM inserted_question), 'Constant', true),
  ((SELECT id FROM inserted_question), 'Identifier', false),
  ((SELECT id FROM inserted_question), 'Token', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which keyword fixes a constant value specifically at compile-time?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'const', false),
  ((SELECT id FROM inserted_question), 'constexpr', true),
  ((SELECT id FROM inserted_question), 'static', false),
  ((SELECT id FROM inserted_question), 'fixed', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which punctuator is used to enclose a single character literal?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Double quotes " "', false),
  ((SELECT id FROM inserted_question), 'Curly braces { }', false),
  ((SELECT id FROM inserted_question), 'Single quotes '' ''', true),
  ((SELECT id FROM inserted_question), 'Square brackets [ ]', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which data type is used to store whole numbers?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'float', false),
  ((SELECT id FROM inserted_question), 'char', false),
  ((SELECT id FROM inserted_question), 'int', true),
  ((SELECT id FROM inserted_question), 'bool', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is the memory size of an int data type in C++ (on standard systems)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '1 byte', false),
  ((SELECT id FROM inserted_question), '2 bytes', false),
  ((SELECT id FROM inserted_question), '4 bytes', true),
  ((SELECT id FROM inserted_question), '8 bytes', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which data type is used to store a single character?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'string', false),
  ((SELECT id FROM inserted_question), 'char', true),
  ((SELECT id FROM inserted_question), 'int', false),
  ((SELECT id FROM inserted_question), 'bool', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is the memory size of a char data type?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '1 byte', true),
  ((SELECT id FROM inserted_question), '2 bytes', false),
  ((SELECT id FROM inserted_question), '4 bytes', false),
  ((SELECT id FROM inserted_question), '8 bytes', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which data type is used for numbers with decimal points?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'int', false),
  ((SELECT id FROM inserted_question), 'char', false),
  ((SELECT id FROM inserted_question), 'float', true),
  ((SELECT id FROM inserted_question), 'bool', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is the memory size of a double data type (used for large decimal numbers)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '1 byte', false),
  ((SELECT id FROM inserted_question), '2 bytes', false),
  ((SELECT id FROM inserted_question), '4 bytes', false),
  ((SELECT id FROM inserted_question), '8 bytes', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which data type stores logical values like true (1) or false (0)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'void', false),
  ((SELECT id FROM inserted_question), 'bool', true),
  ((SELECT id FROM inserted_question), 'int', false),
  ((SELECT id FROM inserted_question), 'char', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which data type means "no value" or "nothing" and is used when a function returns nothing?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'null', false),
  ((SELECT id FROM inserted_question), 'void', true),
  ((SELECT id FROM inserted_question), 'empty', false),
  ((SELECT id FROM inserted_question), 'zero', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Arrays, pointers, and functions fall under which category of data types?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Basic Data Types', false),
  ((SELECT id FROM inserted_question), 'Derived Data Types', true),
  ((SELECT id FROM inserted_question), 'User-Defined Data Types', false),
  ((SELECT id FROM inserted_question), 'String Data Types', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Ensuring that a variable only stores the specific type of data it was declared for to prevent errors is called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Type safety', true),
  ((SELECT id FROM inserted_question), 'Type conversion', false),
  ((SELECT id FROM inserted_question), 'Dynamic allocation', false),
  ((SELECT id FROM inserted_question), 'Encapsulation', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'In C++, string is technically not a basic built-in data type (like int); it is actually defining a(n):')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Integer', false),
  ((SELECT id FROM inserted_question), 'Macro', false),
  ((SELECT id FROM inserted_question), 'Object/Class', true),
  ((SELECT id FROM inserted_question), 'Pointer', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What does STL stand for in C++ strings and libraries?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Standard Tool List', false),
  ((SELECT id FROM inserted_question), 'System Template Library', false),
  ((SELECT id FROM inserted_question), 'Standard Template Library', true),
  ((SELECT id FROM inserted_question), 'Simple Text Language', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Using the << or >> operators repeatedly in a single statement (e.g., cout << "Sum" << sum;) is called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Overloading', false),
  ((SELECT id FROM inserted_question), 'Cascading', true),
  ((SELECT id FROM inserted_question), 'Embedding', false),
  ((SELECT id FROM inserted_question), 'Nesting', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Assigning a value to a variable at runtime (e.g., by taking input using cin >> a;) is known as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Compile-time initialization', false),
  ((SELECT id FROM inserted_question), 'Static initialization', false),
  ((SELECT id FROM inserted_question), 'Dynamic initialization', true),
  ((SELECT id FROM inserted_question), 'Constant initialization', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What provides an alternative name (or nickname) for an existing variable without creating new memory?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Pointer', false),
  ((SELECT id FROM inserted_question), 'Array', false),
  ((SELECT id FROM inserted_question), 'Reference', true),
  ((SELECT id FROM inserted_question), 'Macro', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which symbol is used in the syntax to create a reference variable?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '*', false),
  ((SELECT id FROM inserted_question), '&', true),
  ((SELECT id FROM inserted_question), '#', false),
  ((SELECT id FROM inserted_question), '@', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'If int b = &a; makes b a reference to a, what happens if you change the value of b?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'a remains the same', false),
  ((SELECT id FROM inserted_question), 'An error occurs', false),
  ((SELECT id FROM inserted_question), 'The value of a also changes', true),
  ((SELECT id FROM inserted_question), 'A new variable is created', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Can you declare multiple variables of the same data type in one line (e.g., int x=5, y=6, z=50;)?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Yes', true),
  ((SELECT id FROM inserted_question), 'No', false),
  ((SELECT id FROM inserted_question), 'Only if they are constants', false),
  ((SELECT id FROM inserted_question), 'Only inside macros', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'If you assign a new value to an already existing variable, what happens?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The program crashes', false),
  ((SELECT id FROM inserted_question), 'The variable holds both values', false),
  ((SELECT id FROM inserted_question), 'It takes the new value and discards the previous one', true),
  ((SELECT id FROM inserted_question), 'The compiler gives a warning', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which punctuator is used to define blocks of code?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '[ ]', false),
  ((SELECT id FROM inserted_question), '{ }', true),
  ((SELECT id FROM inserted_question), '( )', false),
  ((SELECT id FROM inserted_question), '" "', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Changing one data type into another (e.g., int to float) is known as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Data abstraction', false),
  ((SELECT id FROM inserted_question), 'Data type conversion', true),
  ((SELECT id FROM inserted_question), 'Cascading', false),
  ((SELECT id FROM inserted_question), 'Operator overloading', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'When the C++ compiler automatically converts a smaller type to a larger type without programmer instruction, it is called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Explicit conversion', false),
  ((SELECT id FROM inserted_question), 'Manual conversion', false),
  ((SELECT id FROM inserted_question), 'Implicit conversion', true),
  ((SELECT id FROM inserted_question), 'Dynamic conversion', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'When a programmer manually forces a conversion (e.g., int x = (int)num;), it is called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Implicit conversion', false),
  ((SELECT id FROM inserted_question), 'Automatic conversion', false),
  ((SELECT id FROM inserted_question), 'Explicit conversion', true),
  ((SELECT id FROM inserted_question), 'Constant conversion', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What happens when you explicitly convert double num = 10.75; to an int?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The value becomes 11 (rounded up)', false),
  ((SELECT id FROM inserted_question), 'The value becomes 10.75', false),
  ((SELECT id FROM inserted_question), 'The value becomes 10 (decimal part is cut off)', true),
  ((SELECT id FROM inserted_question), 'An error is thrown', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is the ASCII value of the character ''A'', which is seen when a char converts implicitly to an int?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '65', true),
  ((SELECT id FROM inserted_question), '97', false),
  ((SELECT id FROM inserted_question), '48', false),
  ((SELECT id FROM inserted_question), '32', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Operators that work on a single operand (like ++ or --) are called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Ternary operators', false),
  ((SELECT id FROM inserted_question), 'Binary operators', false),
  ((SELECT id FROM inserted_question), 'Unary operators', true),
  ((SELECT id FROM inserted_question), 'Relational operators', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Operators that perform actions with two operands (like A +')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'are called:', true),
  ((SELECT id FROM inserted_question), 'Unary operators', false),
  ((SELECT id FROM inserted_question), 'Binary operators', true),
  ((SELECT id FROM inserted_question), 'Ternary operators', false),
  ((SELECT id FROM inserted_question), 'Increment operators', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which operator takes three operands and is used to perform conditional expressions?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Unary operator', false),
  ((SELECT id FROM inserted_question), 'Binary operator', false),
  ((SELECT id FROM inserted_question), 'Ternary operator', true),
  ((SELECT id FROM inserted_question), 'Logical operator', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Operators like && (AN')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), ', || (OR), and ! (NOT) are classified as:', false),
  ((SELECT id FROM inserted_question), 'Arithmetic operators', false),
  ((SELECT id FROM inserted_question), 'Logical operators', true),
  ((SELECT id FROM inserted_question), 'Assignment operators', false),
  ((SELECT id FROM inserted_question), 'Bitwise operators', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Operators that perform operations directly on bits (like << left shift or >> right shift) are called:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Bitwise operators', true),
  ((SELECT id FROM inserted_question), 'Logical operators', false),
  ((SELECT id FROM inserted_question), 'Comparison operators', false),
  ((SELECT id FROM inserted_question), 'Assignment operators', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which type of control structure is used to make decisions and execute different blocks of code based on conditions?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Iteration structure', false),
  ((SELECT id FROM inserted_question), 'Jump structure', false),
  ((SELECT id FROM inserted_question), 'Selection structure', true),
  ((SELECT id FROM inserted_question), 'Sequential structure', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which statement executes a block of code ONLY if the condition inside the parentheses is true?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'switch', false),
  ((SELECT id FROM inserted_question), 'if', true),
  ((SELECT id FROM inserted_question), 'while', false),
  ((SELECT id FROM inserted_question), 'for', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which statement is generally used for multiple constant choices instead of writing many if-else statements?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'for', false),
  ((SELECT id FROM inserted_question), 'do-while', false),
  ((SELECT id FROM inserted_question), 'switch case', true),
  ((SELECT id FROM inserted_question), 'break', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'A switch case works exclusively with which data types?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'float and double', false),
  ((SELECT id FROM inserted_question), 'integer and char', true),
  ((SELECT id FROM inserted_question), 'string and bool', false),
  ((SELECT id FROM inserted_question), 'Arrays and pointers', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'In a switch statement, what keyword is used to exit the switch block immediately after a match?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'continue', false),
  ((SELECT id FROM inserted_question), 'stop', false),
  ((SELECT id FROM inserted_question), 'break', true),
  ((SELECT id FROM inserted_question), 'exit', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What happens if you forget to use break in a switch case?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The program won''t compile', false),
  ((SELECT id FROM inserted_question), 'It executes the matched case and all subsequent cases below it', true),
  ((SELECT id FROM inserted_question), 'It automatically jumps to the default case', false),
  ((SELECT id FROM inserted_question), 'It crashes', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which iteration structure is best to use when you know exactly how many times you want to repeat a block of code?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'for loop', true),
  ((SELECT id FROM inserted_question), 'while loop', false),
  ((SELECT id FROM inserted_question), 'do-while loop', false),
  ((SELECT id FROM inserted_question), 'switch', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which loop is preferred when the exact number of iterations is unknown and it checks the condition before executing the code?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'do-while loop', false),
  ((SELECT id FROM inserted_question), 'for loop', false),
  ((SELECT id FROM inserted_question), 'while loop', true),
  ((SELECT id FROM inserted_question), 'Nested if', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which loop is guaranteed to run at least one time, even if the given condition is false from the beginning?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'for loop', false),
  ((SELECT id FROM inserted_question), 'while loop', false),
  ((SELECT id FROM inserted_question), 'do-while loop', true),
  ((SELECT id FROM inserted_question), 'if statement', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'Which jump statement skips the current iteration and forces the loop to proceed to the next iteration?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'break', false),
  ((SELECT id FROM inserted_question), 'continue', true),
  ((SELECT id FROM inserted_question), 'goto', false),
  ((SELECT id FROM inserted_question), 'return', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('oop', 'What is the primary purpose of a reduction formula in integration?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'To increase the power of the integrand', false),
  ((SELECT id FROM inserted_question), 'To convert a derivative into an integral', false),
  ((SELECT id FROM inserted_question), 'To express an integral in terms of a simpler integral of the same type', true),
  ((SELECT id FROM inserted_question), 'To eliminate the constant of integration', false);

-- Data for maths

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'For $I_n = \int x^n e^x dx$, which of the following represents the correct reduction step?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$I_n = x^n e^x - n I_{n-1}$', true),
  ((SELECT id FROM inserted_question), '$I_n = x^n e^x + n I_{n-1}$', false),
  ((SELECT id FROM inserted_question), '$I_n = e^x - I_{n-1}$', false),
  ((SELECT id FROM inserted_question), '$I_n = x^n - n I_{n-1}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Let $I_n = \int \sin^n(x) dx$. The reduction formula connects $I_n$ with which lower-index integral?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$I_{n-1}$', false),
  ((SELECT id FROM inserted_question), '$I_{n-2}$', true),
  ((SELECT id FROM inserted_question), '$I_{n-3}$', false),
  ((SELECT id FROM inserted_question), '$I_{n-4}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Let $I_n = \int \cos^n(x) dx$. The reduction formula expresses $I_n$ in terms of:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$I_{n-1}$', false),
  ((SELECT id FROM inserted_question), '$I_{n-2}$', true),
  ((SELECT id FROM inserted_question), '$I_{n-3}$', false),
  ((SELECT id FROM inserted_question), '$I_1$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Let $I_n = \int \tan^n(x) dx$. The reduction formula connects $I_n$ with:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$I_{n-1}$', false),
  ((SELECT id FROM inserted_question), '$I_{n-2}$', true),
  ((SELECT id FROM inserted_question), '$I_{n-3}$', false),
  ((SELECT id FROM inserted_question), '$I_{n-4}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Wallis'' formula is specifically used to quickly evaluate integrals of the form $\int_0^{\pi/2} \sin^n(x) dx$ and $\int_0^{\pi/2} \cos^n(x) dx$. What are the limits of integration for Wallis'' formula?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0$ to $\pi$', false),
  ((SELECT id FROM inserted_question), '$0$ to $2\pi$', false),
  ((SELECT id FROM inserted_question), '$0$ to $\pi/2$', true),
  ((SELECT id FROM inserted_question), '$-\pi$ to $\pi$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'In the reduction formula for $I_n = \int_0^{\pi/2} \sin^n(x) dx$, if $n$ is an even integer, what is the final multiplier in the expanded Wallis'' formula?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$\pi/2$', true),
  ((SELECT id FROM inserted_question), '$\pi$', false),
  ((SELECT id FROM inserted_question), '$0$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'In the reduction formula for $I_n = \int_0^{\pi/2} \sin^n(x) dx$, if $n$ is an odd integer, what is the final multiplier in the expanded Wallis'' formula?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1$', true),
  ((SELECT id FROM inserted_question), '$\pi/2$', false),
  ((SELECT id FROM inserted_question), '$\pi$', false),
  ((SELECT id FROM inserted_question), '$2$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Which trigonometric identity is most commonly used to derive the reduction formula for $\int \tan^n(x) dx$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\sin^2(x) + \cos^2(x) = 1$', false),
  ((SELECT id FROM inserted_question), '$1 + \tan^2(x) = \sec^2(x)$', true),
  ((SELECT id FROM inserted_question), '$1 + \cot^2(x) = \csc^2(x)$', false),
  ((SELECT id FROM inserted_question), '$\sin(2x) = 2\sin(x)\cos(x)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Which trigonometric identity is most commonly used to derive the reduction formula for $\int \cot^n(x) dx$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\sin^2(x) + \cos^2(x) = 1$', false),
  ((SELECT id FROM inserted_question), '$1 + \tan^2(x) = \sec^2(x)$', false),
  ((SELECT id FROM inserted_question), '$1 + \cot^2(x) = \csc^2(x)$', true),
  ((SELECT id FROM inserted_question), '$\cos(2x) = \cos^2(x) - \sin^2(x)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Let $I_n = \int \sec^n(x) dx$. The reduction formula relates $I_n$ to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$I_{n-1}$', false),
  ((SELECT id FROM inserted_question), '$I_{n-2}$', true),
  ((SELECT id FROM inserted_question), '$I_{n-3}$', false),
  ((SELECT id FROM inserted_question), '$I_1$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Let $I_n = \int \csc^n(x) dx$. The reduction formula relates $I_n$ to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$I_{n-1}$', false),
  ((SELECT id FROM inserted_question), '$I_{n-2}$', true),
  ((SELECT id FROM inserted_question), '$I_{n-3}$', false),
  ((SELECT id FROM inserted_question), '$I_1$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Let $I_n = \int (\ln x)^n dx$. The reduction formula relates $I_n$ to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$I_{n-1}$', true),
  ((SELECT id FROM inserted_question), '$I_{n-2}$', false),
  ((SELECT id FROM inserted_question), '$I_{n+1}$', false),
  ((SELECT id FROM inserted_question), '$I_{n+2}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What technique of integration is primarily used to derive almost all basic reduction formulae?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Partial Fractions', false),
  ((SELECT id FROM inserted_question), 'Integration by Substitution', false),
  ((SELECT id FROM inserted_question), 'Integration by Parts', true),
  ((SELECT id FROM inserted_question), 'Trigonometric Substitution', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'If $I_n = \int_0^{\pi/2} \sin^n(x) dx$ and $J_n = \int_0^{\pi/2} \cos^n(x) dx$, what is the relationship between $I_n$ and $J_n$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$I_n = -J_n$', false),
  ((SELECT id FROM inserted_question), '$I_n = J_n$', true),
  ((SELECT id FROM inserted_question), '$I_n = 1/J_n$', false),
  ((SELECT id FROM inserted_question), '$I_n = J_{n-1}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'For $I_{m,n} = \int \sin^m(x) \cos^n(x) dx$, the reduction formula can be used to reduce:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Only the power $m$', false),
  ((SELECT id FROM inserted_question), 'Only the power $n$', false),
  ((SELECT id FROM inserted_question), 'Either the power $m$ or the power $n$', true),
  ((SELECT id FROM inserted_question), 'Neither power', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The first step in finding the reduction formula for $\int \sin^n(x) dx$ using integration by parts involves splitting $\sin^n(x)$ into:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\sin(x) \cdot \sin(x)$', false),
  ((SELECT id FROM inserted_question), '$\sin^{n-1}(x) \cdot \sin(x)$', true),
  ((SELECT id FROM inserted_question), '$\sin^{n-2}(x) \cdot \sin^2(x)$', false),
  ((SELECT id FROM inserted_question), '$\sin^{n/2}(x) \cdot \sin^{n/2}(x)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The first step in finding the reduction formula for $\int \tan^n(x) dx$ involves splitting $\tan^n(x)$ into:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\tan^{n-1}(x) \cdot \tan(x)$', false),
  ((SELECT id FROM inserted_question), '$\tan^{n-2}(x) \cdot \tan^2(x)$', true),
  ((SELECT id FROM inserted_question), '$\tan(x) \cdot \tan(x)$', false),
  ((SELECT id FROM inserted_question), '$\tan^{n-3}(x) \cdot \tan^3(x)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'For the integral $I_n = \int x^n e^{ax} dx$, what is typically chosen as the first function ($u$) when applying integration by parts?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$e^{ax}$', false),
  ((SELECT id FROM inserted_question), '$x^n$', true),
  ((SELECT id FROM inserted_question), '$x^{n-1}$', false),
  ((SELECT id FROM inserted_question), '$a$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'For the integral $I_n = \int x^n \cos(ax) dx$, what is typically chosen as the first function ($u$) when applying integration by parts?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\cos(ax)$', false),
  ((SELECT id FROM inserted_question), '$a$', false),
  ((SELECT id FROM inserted_question), '$x^n$', true),
  ((SELECT id FROM inserted_question), '$\sin(ax)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the standard definition of the Gamma function $\Gamma(n)$ for $n > 0$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\int_0^\infty e^x x^{n-1} dx$', false),
  ((SELECT id FROM inserted_question), '$\int_0^\infty e^{-x} x^{n-1} dx$', true),
  ((SELECT id FROM inserted_question), '$\int_0^1 e^{-x} x^{n-1} dx$', false),
  ((SELECT id FROM inserted_question), '$\int_{-\infty}^\infty e^{-x} x^{n-1} dx$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Which of the following is the fundamental recurrence relation for the Gamma function?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\Gamma(n+1) = \Gamma(n)$', false),
  ((SELECT id FROM inserted_question), '$\Gamma(n+1) = n + \Gamma(n)$', false),
  ((SELECT id FROM inserted_question), '$\Gamma(n+1) = n \Gamma(n)$', true),
  ((SELECT id FROM inserted_question), '$\Gamma(n+1) = \Gamma(n)/n$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'For a positive integer $n$, the Gamma function $\Gamma(n+1)$ is equal to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$n!$', true),
  ((SELECT id FROM inserted_question), '$(n+1)!$', false),
  ((SELECT id FROM inserted_question), '$(n-1)!$', false),
  ((SELECT id FROM inserted_question), '$n$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'For a positive integer $n$, the Gamma function $\Gamma(n)$ is equal to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$n!$', false),
  ((SELECT id FROM inserted_question), '$(n+1)!$', false),
  ((SELECT id FROM inserted_question), '$(n-1)!$', true),
  ((SELECT id FROM inserted_question), '$1/n!$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the value of $\Gamma(1)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0$', false),
  ((SELECT id FROM inserted_question), '$1$', true),
  ((SELECT id FROM inserted_question), '$\pi$', false),
  ((SELECT id FROM inserted_question), '$\infty$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the value of $\Gamma(2)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0$', false),
  ((SELECT id FROM inserted_question), '$1$', true),
  ((SELECT id FROM inserted_question), '$2$', false),
  ((SELECT id FROM inserted_question), '$3$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the value of $\Gamma(3)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$2$', true),
  ((SELECT id FROM inserted_question), '$3$', false),
  ((SELECT id FROM inserted_question), '$6$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the value of $\Gamma(4)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$4$', false),
  ((SELECT id FROM inserted_question), '$6$', true),
  ((SELECT id FROM inserted_question), '$24$', false),
  ((SELECT id FROM inserted_question), '$12$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the value of $\Gamma(5)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$5$', false),
  ((SELECT id FROM inserted_question), '$24$', true),
  ((SELECT id FROM inserted_question), '$120$', false),
  ((SELECT id FROM inserted_question), '$12$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the exact value of $\Gamma(1/2)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1/2$', false),
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$\pi$', false),
  ((SELECT id FROM inserted_question), '$\sqrt{\pi}$', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Using the recurrence relation, what is the value of $\Gamma(3/2)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\frac{1}{2} \sqrt{\pi}$', true),
  ((SELECT id FROM inserted_question), '$\frac{3}{2} \sqrt{\pi}$', false),
  ((SELECT id FROM inserted_question), '$\sqrt{\pi}$', false),
  ((SELECT id FROM inserted_question), '$\frac{1}{4} \sqrt{\pi}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Using the recurrence relation, what is the value of $\Gamma(5/2)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\frac{1}{2} \sqrt{\pi}$', false),
  ((SELECT id FROM inserted_question), '$\frac{3}{4} \sqrt{\pi}$', true),
  ((SELECT id FROM inserted_question), '$\frac{5}{2} \sqrt{\pi}$', false),
  ((SELECT id FROM inserted_question), '$\frac{15}{8} \sqrt{\pi}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The Gamma function $\Gamma(n)$ is a generalization of which mathematical concept to real and complex numbers?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Exponents', false),
  ((SELECT id FROM inserted_question), 'Logarithms', false),
  ((SELECT id FROM inserted_question), 'Factorials', true),
  ((SELECT id FROM inserted_question), 'Matrices', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The integral $\int_0^\infty e^{-ax} x^{n-1} dx$ (where $a > 0$) evaluates to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\frac{\Gamma(n)}{a^n}$', true),
  ((SELECT id FROM inserted_question), '$a^n \Gamma(n)$', false),
  ((SELECT id FROM inserted_question), '$\frac{\Gamma(n+1)}{a}$', false),
  ((SELECT id FROM inserted_question), '$\frac{\Gamma(n)}{a}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The Gamma function integral definition $\int_0^\infty e^{-x} x^{n-1} dx$ converges for:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'All real numbers', false),
  ((SELECT id FROM inserted_question), '$n > 0$', true),
  ((SELECT id FROM inserted_question), '$n < 0$', false),
  ((SELECT id FROM inserted_question), '$n = 0$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'By definition, $\Gamma(x+2)$ is equal to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$x(x+1)\Gamma(x)$', false),
  ((SELECT id FROM inserted_question), '$(x+1)\Gamma(x+1)$', false),
  ((SELECT id FROM inserted_question), '$x\Gamma(x+1)$', false),
  ((SELECT id FROM inserted_question), 'Both A and B are correct', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the value of $0!$ based on the Gamma function relation $n! = \Gamma(n+1)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0$', false),
  ((SELECT id FROM inserted_question), '$1$', true),
  ((SELECT id FROM inserted_question), 'Undefined', false),
  ((SELECT id FROM inserted_question), '$\infty$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'If $\Gamma(n+1) = 120$, what is the integer value of $n$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$4$', false),
  ((SELECT id FROM inserted_question), '$5$', true),
  ((SELECT id FROM inserted_question), '$6$', false),
  ((SELECT id FROM inserted_question), '$7$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'If $\Gamma(n) = 24$, what is the integer value of $n$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$4$', false),
  ((SELECT id FROM inserted_question), '$5$', true),
  ((SELECT id FROM inserted_question), '$6$', false),
  ((SELECT id FROM inserted_question), '$7$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The relation $\Gamma(n)\Gamma(1-n) = \frac{\pi}{\sin(n\pi)}$ is known as:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Leibniz''s formula', false),
  ((SELECT id FROM inserted_question), 'Euler''s reflection formula', true),
  ((SELECT id FROM inserted_question), 'Wallis'' formula', false),
  ((SELECT id FROM inserted_question), 'Beta-Gamma relation', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the standard definition of the Beta function $B(m,n)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\int_0^1 x^{m-1} (1-x)^{n-1} dx$', true),
  ((SELECT id FROM inserted_question), '$\int_0^\infty x^{m-1} (1-x)^{n-1} dx$', false),
  ((SELECT id FROM inserted_question), '$\int_0^1 e^{-x} x^{m-1} dx$', false),
  ((SELECT id FROM inserted_question), '$\int_{-1}^1 x^{m-1} (1-x)^{n-1} dx$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Which of the following is the symmetry property of the Beta function?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$B(m,n) = -B(n,m)$', false),
  ((SELECT id FROM inserted_question), '$B(m,n) = 1/B(n,m)$', false),
  ((SELECT id FROM inserted_question), '$B(m,n) = B(n,m)$', true),
  ((SELECT id FROM inserted_question), '$B(m,n) = B(m+n, m-n)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the relationship between the Beta function and the Gamma function?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$B(m,n) = \frac{\Gamma(m) + \Gamma(n)}{\Gamma(m+n)}$', false),
  ((SELECT id FROM inserted_question), '$B(m,n) = \frac{\Gamma(m) \Gamma(n)}{\Gamma(m+n)}$', true),
  ((SELECT id FROM inserted_question), '$B(m,n) = \Gamma(m) \Gamma(n) \Gamma(m+n)$', false),
  ((SELECT id FROM inserted_question), '$B(m,n) = \frac{\Gamma(m+n)}{\Gamma(m) \Gamma(n)}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The Beta function integral definition $\int_0^1 x^{m-1} (1-x)^{n-1} dx$ converges for:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$m > 0, n > 0$', true),
  ((SELECT id FROM inserted_question), '$m \ge 0, n \ge 0$', false),
  ((SELECT id FROM inserted_question), '$m > 1, n > 1$', false),
  ((SELECT id FROM inserted_question), 'All real numbers', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the trigonometric form of the Beta function $B(m,n)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$2 \int_0^{\pi/2} \sin^{2m-1}(\theta) \cos^{2n-1}(\theta) d\theta$', true),
  ((SELECT id FROM inserted_question), '$\int_0^{\pi/2} \sin^m(\theta) \cos^n(\theta) d\theta$', false),
  ((SELECT id FROM inserted_question), '$2 \int_0^\pi \sin^{m-1}(\theta) \cos^{n-1}(\theta) d\theta$', false),
  ((SELECT id FROM inserted_question), '$\int_0^{2\pi} \sin^{2m}(\theta) \cos^{2n}(\theta) d\theta$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Using the Gamma relation, what is $B(1,1)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0$', false),
  ((SELECT id FROM inserted_question), '$1$', true),
  ((SELECT id FROM inserted_question), '$2$', false),
  ((SELECT id FROM inserted_question), '$\pi$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Using the Gamma relation, what is $B(2,1)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1/2$', true),
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$2$', false),
  ((SELECT id FROM inserted_question), '$1/3$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Using the Gamma relation, what is $B(1,2)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$1/2$', true),
  ((SELECT id FROM inserted_question), '$2$', false),
  ((SELECT id FROM inserted_question), '$1/3$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Using the Gamma relation, what is $B(2,2)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1/2$', false),
  ((SELECT id FROM inserted_question), '$1/3$', false),
  ((SELECT id FROM inserted_question), '$1/6$', true),
  ((SELECT id FROM inserted_question), '$1/4$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Using the Gamma relation, what is $B(3,1)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1/2$', false),
  ((SELECT id FROM inserted_question), '$1/3$', true),
  ((SELECT id FROM inserted_question), '$1/4$', false),
  ((SELECT id FROM inserted_question), '$1$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the value of $B(1/2, 1/2)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$\pi$', true),
  ((SELECT id FROM inserted_question), '$\sqrt{\pi}$', false),
  ((SELECT id FROM inserted_question), '$\pi/2$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Another integral form of the Beta function is $\int_0^\infty \frac{x^{m-1}}{(1+x)^{m+n}} dx$. This evaluates to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\Gamma(m+n)$', false),
  ((SELECT id FROM inserted_question), '$B(m,n)$', true),
  ((SELECT id FROM inserted_question), '$B(m+n, 1)$', false),
  ((SELECT id FROM inserted_question), '$\Gamma(m)\Gamma(n)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'By the properties of the Beta function, $B(m,n)$ is also equal to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\int_0^1 x^{n-1} (1-x)^{m-1} dx$', true),
  ((SELECT id FROM inserted_question), '$\int_0^1 x^{m} (1-x)^{n} dx$', false),
  ((SELECT id FROM inserted_question), '$\int_0^\infty e^{-x} x^{m+n-1} dx$', false),
  ((SELECT id FROM inserted_question), '$\int_0^1 x^{m+n} dx$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'If $B(m,n) = \frac{\Gamma(m)\Gamma(n)}{\Gamma(m+n)}$, what is the denominator when $m=3$ and $n=2$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\Gamma(5)$', true),
  ((SELECT id FROM inserted_question), '$\Gamma(6)$', false),
  ((SELECT id FROM inserted_question), '$5!$', false),
  ((SELECT id FROM inserted_question), '$6!$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'For $m=3, n=2$, what is the numerical value of $\Gamma(m+n)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$120$', false),
  ((SELECT id FROM inserted_question), '$24$', true),
  ((SELECT id FROM inserted_question), '$6$', false),
  ((SELECT id FROM inserted_question), '$12$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the value of $B(3,2)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1/12$', true),
  ((SELECT id FROM inserted_question), '$1/24$', false),
  ((SELECT id FROM inserted_question), '$1/6$', false),
  ((SELECT id FROM inserted_question), '$1/2$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The integral $\int_0^{\pi/2} \sin^3(\theta) \cos^5(\theta) d\theta$ can be solved easily using the Beta function. In the formula $2 \int \sin^{2m-1}(\theta) \cos^{2n-1}(\theta) d\theta = B(m,n)$, what are $m$ and $n$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$m=3, n=5$', false),
  ((SELECT id FROM inserted_question), '$m=2, n=3$', true),
  ((SELECT id FROM inserted_question), '$m=1.5, n=2.5$', false),
  ((SELECT id FROM inserted_question), '$m=4, n=6$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The function $B(m,n)$ is defined only when:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Both $m$ and $n$ are strictly positive.', true),
  ((SELECT id FROM inserted_question), 'Both $m$ and $n$ are non-negative.', false),
  ((SELECT id FROM inserted_question), 'Both $m$ and $n$ are integers.', false),
  ((SELECT id FROM inserted_question), 'Both $m$ and $n$ are strictly greater than 1.', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The relationship $B(m,n) = \frac{m-1}{m+n-1} B(m-1,n)$ represents a:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Reflection formula', false),
  ((SELECT id FROM inserted_question), 'Reduction property of the Beta function', true),
  ((SELECT id FROM inserted_question), 'Trigonometric identity', false),
  ((SELECT id FROM inserted_question), 'Gamma definition', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Which of the following is equivalent to $B(n, 1)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$n$', false),
  ((SELECT id FROM inserted_question), '$1/n$', true),
  ((SELECT id FROM inserted_question), '$n!$', false),
  ((SELECT id FROM inserted_question), '$1$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What does DUIS stand for in calculus?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Direct Unification of Integral Sums', false),
  ((SELECT id FROM inserted_question), 'Derivative Under Infinite Series', false),
  ((SELECT id FROM inserted_question), 'Differentiation Under the Integral Sign', true),
  ((SELECT id FROM inserted_question), 'Dual Uniform Integral System', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The DUIS rule is also famously known by the name of which mathematician?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Newton''s Rule', false),
  ((SELECT id FROM inserted_question), 'Leibniz''s Rule', true),
  ((SELECT id FROM inserted_question), 'Euler''s Rule', false),
  ((SELECT id FROM inserted_question), 'L''Hôpital''s Rule', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'If $I(\alpha) = \int_a^b f(x,\alpha) dx$ where $a$ and $b$ are constants, what does Leibniz''s rule state about $\frac{dI}{d\alpha}$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\int_a^b \frac{df}{dx} dx$', false),
  ((SELECT id FROM inserted_question), '$\int_a^b \frac{\partial f}{\partial \alpha} dx$', true),
  ((SELECT id FROM inserted_question), '$\int_a^b f(x,\alpha) d\alpha$', false),
  ((SELECT id FROM inserted_question), '$f(b,\alpha) - f(a,\alpha)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'In the basic DUIS rule with constant limits, the ordinary derivative $\frac{d}{d\alpha}$ outside the integral becomes what kind of derivative inside the integral?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Ordinary derivative with respect to $x$', false),
  ((SELECT id FROM inserted_question), 'Partial derivative with respect to $x$', false),
  ((SELECT id FROM inserted_question), 'Partial derivative with respect to $\alpha$', true),
  ((SELECT id FROM inserted_question), 'Double derivative', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'To apply the basic Leibniz rule (constant limits), the limits of integration $a$ and $b$ must be:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Variables dependent on $x$', false),
  ((SELECT id FROM inserted_question), 'Variables dependent on $\alpha$', false),
  ((SELECT id FROM inserted_question), 'Independent of the parameter $\alpha$', true),
  ((SELECT id FROM inserted_question), 'Zero and Infinity only', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'When evaluating $\frac{d}{d\alpha} \int_0^1 e^{\alpha x} dx$ using DUIS, what is the partial derivative $\frac{\partial}{\partial \alpha} (e^{\alpha x})$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$e^{\alpha x}$', false),
  ((SELECT id FROM inserted_question), '$\alpha e^{\alpha x}$', false),
  ((SELECT id FROM inserted_question), '$x e^{\alpha x}$', true),
  ((SELECT id FROM inserted_question), '$x \alpha e^{\alpha x}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'When evaluating $\frac{d}{d\alpha} \int_0^\pi \cos(\alpha x) dx$ using DUIS, what is $\frac{\partial}{\partial \alpha} \cos(\alpha x)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$-\sin(\alpha x)$', false),
  ((SELECT id FROM inserted_question), '$-x \sin(\alpha x)$', true),
  ((SELECT id FROM inserted_question), '$-\alpha \sin(\alpha x)$', false),
  ((SELECT id FROM inserted_question), '$x \cos(\alpha x)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The extended Leibniz rule applies when:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The integrand is a constant', false),
  ((SELECT id FROM inserted_question), 'The integral has no limits', false),
  ((SELECT id FROM inserted_question), 'The limits of integration depend on the parameter being differentiated', true),
  ((SELECT id FROM inserted_question), 'The parameter is a complex number', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'If $I(\alpha) = \int_0^\alpha f(x) dx$, then by the fundamental theorem of calculus (which is a simple case of variable-limit DUIS), what is $\frac{dI}{d\alpha}$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$f(x)$', false),
  ((SELECT id FROM inserted_question), '$f''(\alpha)$', false),
  ((SELECT id FROM inserted_question), '$f(\alpha)$', true),
  ((SELECT id FROM inserted_question), '$0$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Which theorem forms the foundation of the DUIS rule for variable limits?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Pythagorean Theorem', false),
  ((SELECT id FROM inserted_question), 'Fundamental Theorem of Calculus', true),
  ((SELECT id FROM inserted_question), 'Mean Value Theorem', false),
  ((SELECT id FROM inserted_question), 'Taylor''s Theorem', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Why do we use the DUIS rule?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'To solve differential equations directly', false),
  ((SELECT id FROM inserted_question), 'To evaluate difficult definite integrals by introducing a parameter', true),
  ((SELECT id FROM inserted_question), 'To convert integrals into sums', false),
  ((SELECT id FROM inserted_question), 'To find the roots of a polynomial', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'In the expression $\int_a^b \frac{\partial f(x,\alpha)}{\partial \alpha} dx$, what is treated as a constant during the partial differentiation?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\alpha$', false),
  ((SELECT id FROM inserted_question), '$x$', true),
  ((SELECT id FROM inserted_question), '$a$', false),
  ((SELECT id FROM inserted_question), '$b$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'When evaluating $\frac{d}{dy} \int_1^2 (x^2 + y^2) dx$ using DUIS, what is the integrand for the new integral?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$2x$', false),
  ((SELECT id FROM inserted_question), '$2y$', true),
  ((SELECT id FROM inserted_question), '$x^2 + 2y$', false),
  ((SELECT id FROM inserted_question), '$2x + 2y$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Using DUIS on $I(a) = \int_0^1 \frac{\sin(ax)}{x} dx$, what is the first step inside the integral?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Integrate with respect to $a$', false),
  ((SELECT id FROM inserted_question), 'Differentiate $\frac{\sin(ax)}{x}$ partially with respect to $a$', true),
  ((SELECT id FROM inserted_question), 'Differentiate $\frac{\sin(ax)}{x}$ partially with respect to $x$', false),
  ((SELECT id FROM inserted_question), 'Substitute $x = \sin(\theta)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the partial derivative $\frac{\partial}{\partial a} \left(\frac{\sin(ax)}{x}\right)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\cos(ax)$', true),
  ((SELECT id FROM inserted_question), '$a \cos(ax)$', false),
  ((SELECT id FROM inserted_question), '$\frac{\cos(ax)}{x}$', false),
  ((SELECT id FROM inserted_question), '$-\cos(ax)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'If $I(m) = \int_0^\infty e^{-mx} dx$, what is the partial derivative of the integrand with respect to $m$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$-m e^{-mx}$', false),
  ((SELECT id FROM inserted_question), '$-x e^{-mx}$', true),
  ((SELECT id FROM inserted_question), '$e^{-mx}$', false),
  ((SELECT id FROM inserted_question), '$x e^{-mx}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The term "parameter" in the context of DUIS refers to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'The variable of integration', false),
  ((SELECT id FROM inserted_question), 'The constant of integration', false),
  ((SELECT id FROM inserted_question), 'A variable independent of the integration variable that defines a family of integrals', true),
  ((SELECT id FROM inserted_question), 'The upper limit only', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'If $I(y) = \int_0^1 x^y dx$, what is $\frac{\partial}{\partial y} (x^y)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$y x^{y-1}$', false),
  ((SELECT id FROM inserted_question), '$x^y \ln(x)$', true),
  ((SELECT id FROM inserted_question), '$x^y \ln(y)$', false),
  ((SELECT id FROM inserted_question), '$x^y$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Which function acts as the integration variable in $\int_a^b f(x,\alpha) dx$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\alpha$', false),
  ((SELECT id FROM inserted_question), '$a$', false),
  ((SELECT id FROM inserted_question), '$b$', false),
  ((SELECT id FROM inserted_question), '$x$', true);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'According to the full Leibniz rule for variable limits $a(\alpha)$ and $b(\alpha)$, what term is added for the upper limit?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$f(b(\alpha), \alpha) \cdot b''(\alpha)$', true),
  ((SELECT id FROM inserted_question), '$f(a(\alpha), \alpha) \cdot a''(\alpha)$', false),
  ((SELECT id FROM inserted_question), '$f(b(\alpha), x) \cdot \alpha''$', false),
  ((SELECT id FROM inserted_question), '$f(b, a)$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the standard mathematical definition of the Error Function, denoted as $\text{erf}(x)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\int_0^x e^{-t} dt$', false),
  ((SELECT id FROM inserted_question), '$\frac{2}{\sqrt{\pi}} \int_0^x e^{-t^2} dt$', true),
  ((SELECT id FROM inserted_question), '$\frac{1}{\sqrt{2\pi}} \int_0^x e^{-t^2/2} dt$', false),
  ((SELECT id FROM inserted_question), '$\int_0^\infty e^{-t^2} dt$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the value of $\text{erf}(0)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$-1$', false),
  ((SELECT id FROM inserted_question), '$0$', true),
  ((SELECT id FROM inserted_question), '$\infty$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the limit of $\text{erf}(x)$ as $x \to \infty$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0$', false),
  ((SELECT id FROM inserted_question), '$1$', true),
  ((SELECT id FROM inserted_question), '$\pi$', false),
  ((SELECT id FROM inserted_question), '$\sqrt{\pi}/2$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the definition of the Complementary Error Function, $\text{erfc}(x)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\text{erfc}(x) = \text{erf}(-x)$', false),
  ((SELECT id FROM inserted_question), '$\text{erfc}(x) = 1 + \text{erf}(x)$', false),
  ((SELECT id FROM inserted_question), '$\text{erfc}(x) = 1 - \text{erf}(x)$', true),
  ((SELECT id FROM inserted_question), '$\text{erfc}(x) = \frac{1}{\text{erf}(x)}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Based on the relationship $\text{erf}(x) + \text{erfc}(x) = 1$, what is the value of $\text{erfc}(0)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0$', false),
  ((SELECT id FROM inserted_question), '$1$', true),
  ((SELECT id FROM inserted_question), '$-1$', false),
  ((SELECT id FROM inserted_question), '$1/2$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the limit of $\text{erfc}(x)$ as $x \to \infty$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0$', true),
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$\infty$', false),
  ((SELECT id FROM inserted_question), '$-1$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Which property applies to the Error Function regarding its symmetry?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'It is an even function: $\text{erf}(-x) = \text{erf}(x)$', false),
  ((SELECT id FROM inserted_question), 'It is an odd function: $\text{erf}(-x) = -\text{erf}(x)$', true),
  ((SELECT id FROM inserted_question), 'It is a periodic function', false),
  ((SELECT id FROM inserted_question), 'It is a nowhere continuous function', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the integral representation of the Complementary Error Function, $\text{erfc}(x)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\frac{2}{\sqrt{\pi}} \int_0^x e^{-t^2} dt$', false),
  ((SELECT id FROM inserted_question), '$\frac{2}{\sqrt{\pi}} \int_x^\infty e^{-t^2} dt$', true),
  ((SELECT id FROM inserted_question), '$\frac{2}{\sqrt{\pi}} \int_{-x}^x e^{-t^2} dt$', false),
  ((SELECT id FROM inserted_question), '$\int_0^\infty e^{-t^2} dt$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the first derivative of the Error Function, $\frac{d}{dx} \text{erf}(x)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$e^{-x^2}$', false),
  ((SELECT id FROM inserted_question), '$\frac{2}{\sqrt{\pi}} e^{-x^2}$', true),
  ((SELECT id FROM inserted_question), '$-\frac{2}{\sqrt{\pi}} e^{-x^2}$', false),
  ((SELECT id FROM inserted_question), '$2x e^{-x^2}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the first derivative of the Complementary Error Function, $\frac{d}{dx} \text{erfc}(x)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\frac{2}{\sqrt{\pi}} e^{-x^2}$', false),
  ((SELECT id FROM inserted_question), '$-\frac{2}{\sqrt{\pi}} e^{-x^2}$', true),
  ((SELECT id FROM inserted_question), '$-e^{-x^2}$', false),
  ((SELECT id FROM inserted_question), '$2x e^{-x^2}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The normalization constant in front of the integral for $\text{erf}(x)$ is $\frac{2}{\sqrt{\pi}}$. This is derived from the fact that the integral $\int_0^\infty e^{-t^2} dt$ equals:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$\sqrt{\pi}/2$', true),
  ((SELECT id FROM inserted_question), '$\pi/2$', false),
  ((SELECT id FROM inserted_question), '$\sqrt{\pi}$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'What is the value of $\text{erf}(-\infty)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0$', false),
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$-1$', true),
  ((SELECT id FROM inserted_question), '$-\infty$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The Error Function frequently appears in which area of science and mathematics?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Group Theory', false),
  ((SELECT id FROM inserted_question), 'Probability, Statistics, and Partial Differential Equations (like heat conduction)', true),
  ((SELECT id FROM inserted_question), 'Number Theory', false),
  ((SELECT id FROM inserted_question), 'Graph Theory', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'If $\text{erf}(x) = 0.4$, what is $\text{erfc}(x)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0.4$', false),
  ((SELECT id FROM inserted_question), '$-0.4$', false),
  ((SELECT id FROM inserted_question), '$0.6$', true),
  ((SELECT id FROM inserted_question), '$1.4$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'If $\text{erfc}(x) = 0.25$, what is $\text{erf}(x)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$0.25$', false),
  ((SELECT id FROM inserted_question), '$0.75$', true),
  ((SELECT id FROM inserted_question), '$-0.25$', false),
  ((SELECT id FROM inserted_question), '$1.25$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The Maclaurin series (Taylor series at $x=0$) for $\text{erf}(x)$ contains only which types of powers of $x$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'Only even powers', false),
  ((SELECT id FROM inserted_question), 'Only odd powers', true),
  ((SELECT id FROM inserted_question), 'Both even and odd powers', false),
  ((SELECT id FROM inserted_question), 'No powers of $x$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'In the definition of $\text{erf}(x)$, the integrand is $e^{-t^2}$. What kind of function is $e^{-t^2}$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), 'An odd function', false),
  ((SELECT id FROM inserted_question), 'An even function', true),
  ((SELECT id FROM inserted_question), 'Neither even nor odd', false),
  ((SELECT id FROM inserted_question), 'A periodic function', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Which of the following limits is true for the error function?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$\lim_{x \to 0} \text{erf}(x) = 1$', false),
  ((SELECT id FROM inserted_question), '$\lim_{x \to \infty} \text{erf}(x) = 0$', false),
  ((SELECT id FROM inserted_question), '$\lim_{x \to -\infty} \text{erf}(x) = -1$', true),
  ((SELECT id FROM inserted_question), '$\lim_{x \to 0} \text{erfc}(x) = 0$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'The integral of the error function involves the Gaussian integral. The standard Gaussian integral $\int_{-\infty}^\infty e^{-x^2} dx$ evaluates to:')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$\pi$', false),
  ((SELECT id FROM inserted_question), '$\sqrt{\pi}$', true),
  ((SELECT id FROM inserted_question), '$\pi/2$', false);

WITH inserted_question AS (
  INSERT INTO questions (subject, question)
  VALUES ('maths', 'Using the odd function property of the error function, what is the value of $\text{erf}(-x) + \text{erf}(x)$?')
  RETURNING id
)
INSERT INTO options (question_id, option_text, is_correct) VALUES
  ((SELECT id FROM inserted_question), '$1$', false),
  ((SELECT id FROM inserted_question), '$2 \text{erf}(x)$', false),
  ((SELECT id FROM inserted_question), '$0$', true),
  ((SELECT id FROM inserted_question), '$-1$', false);

