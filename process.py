import json
import re

def parse_all_questions(filename):
    with open(filename, 'r', encoding='latin-1', errors='replace') as f:
        content = f.read()

    # Split safely on lines starting with Q1. or *Q1. or 1.
    pattern = r'(?m)^[^\w\n]*(?:Q|q)?\s*\d+\s*[\.\)]\s*'
    parts = re.split(pattern, content)
    
    questions_flat = []
    
    for part in parts[1:]:
        text = part.strip()
        if not text:
            continue
            
        match_ans = re.search(r'(?i)(correct answer:|answer:)\s*(.*)', text)
        correct_answer_text = ''
        if match_ans:
            correct_answer_text = match_ans.group(2)
            text = text[:match_ans.start()]
            
        option_matches = list(re.finditer(r'(?m)([A-D])\)\s*(.*?)(?=(?:[A-D]\)|$))', text, re.DOTALL))
        
        if len(option_matches) == 0:
            option_matches = list(re.finditer(r'(?m)([A-D])\.\s*(.*?)(?=(?:[A-D]\.|$))', text, re.DOTALL))
            
        if len(option_matches) > 0:
            question_text = text[:option_matches[0].start()].strip()
            question_text = re.sub(r'\s+', ' ', question_text)
        else:
            question_text = re.sub(r'\s+', ' ', text.strip())
            
        correct_letter = ''
        if correct_answer_text:
            ans_part = correct_answer_text.strip()
            if ans_part and ans_part[0].upper() in ['A', 'B', 'C', 'D']:
                correct_letter = ans_part[0].upper()
            else:
                m = re.search(r'([A-D])\)|([A-D])\.', ans_part, re.IGNORECASE)
                if m:
                    correct_letter = (m.group(1) or m.group(2)).upper()
                else:
                    m2 = re.search(r'\b([A-D])\b', ans_part, re.IGNORECASE)
                    if m2:
                        correct_letter = m2.group(1).upper()

        options = []
        for match in option_matches:
            letter = match.group(1).upper()
            opt_text = match.group(2).strip()
            opt_text = re.sub(r'\s+', ' ', opt_text)
            is_correct = (letter == correct_letter)
            options.append({'text': opt_text, 'isCorrect': is_correct})
            
        if not any(o['isCorrect'] for o in options) and correct_answer_text and len(options) > 0:
            for o in options:
                if o['text'].lower() in correct_answer_text.lower() and len(o['text']) > 2:
                    o['isCorrect'] = True
                    break

        questions_flat.append({
            'question': question_text.strip(),
            'options': options
        })

    print(f'Parsed total questions: {len(questions_flat)}')
    empty_opts = sum(1 for q in questions_flat if len(q['options']) == 0)
    print(f'Questions with no options parsed: {empty_opts}')

    fds = questions_flat[0:100]
    iot = questions_flat[100:200]
    oop = questions_flat[200:300]
    maths = questions_flat[300:400]
    
    print(f'FDS: {len(fds)}, IOT: {len(iot)}, OOP: {len(oop)}, MATHS: {len(maths)}')
    return {'fds': fds, 'iot': iot, 'oop': oop, 'maths': maths}

db = parse_all_questions('ERP-System/ERP-System/new questions.txt')

with open('ERP-System/questions.js', 'w', encoding='utf-8') as f:
    js_content = 'const quizDatabase = {\n'
    for subject, qs in db.items():
        js_content += f'  // ----------------------------------------\n'
        js_content += f'  // {subject.upper()} Questions ({len(qs)})\n'
        js_content += f'  // ----------------------------------------\n'
        js_content += f'  {subject}: ' + json.dumps(qs, indent=4) + ',\n\n'
    js_content += '};\n'
    f.write(js_content)

with open('ERP-System/insert_questions.sql', 'w', encoding='utf-8') as f:
    sql_content = '-- Auto-generated for Supabase (Flat Schema)\n\n'
    for subject, qs in db.items():
        sql_content += f'-- Data for {subject}\n\n'
        for q in qs:
            q_text = q['question'].replace("'", "''")
            
            # Extract plain string options and find correct index
            plain_opts = []
            corr_idx = 0
            
            if len(q['options']) == 0:
                plain_opts = ['Missing Option 1', 'Missing Option 2']
                corr_idx = 1
            else:
                for idx, o in enumerate(q['options']):
                    plain_opts.append(o['text'])
                    if o['isCorrect']:
                        corr_idx = idx
            
            # Escaping for JSON and SQL strings
            opts_json = json.dumps(plain_opts).replace("'", "''")
            
            sql_content += f"INSERT INTO questions (subject, question, options, correct_index)\n"
            sql_content += f"VALUES ('{subject}', '{q_text}', '{opts_json}', {corr_idx});\n\n"
            
    f.write(sql_content)
    print('Wrote files.')
