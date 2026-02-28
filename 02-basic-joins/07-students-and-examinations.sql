-- 1280. Students and Examinations
-- Problem Statement:  find the number of times each student attended each exam.
-- Return the result table ordered by student_id and subject_name.

-- Approach:
-- Select Students.student_id, Students.student_name, Subjects.subject_name,
-- and COUNT(Examinations.student_id) AS attended_exams
-- Perform a CROSS JOIN between Students and Subjects
-- (so every student is paired with every subject)
-- Perform a LEFT JOIN with the Examinations table using student_id and subject_name
-- (so combinations with no exam records are still included)
-- Count how many exams each student attended per subject
-- Group by Students.student_id, Students.student_name, and Subjects.subject_name
-- Order the result by Students.student_id and Subjects.subject_name

SELECT Students.student_id, Students.student_name, Subjects.subject_name, COUNT(Examinations.student_id) AS attended_exams
FROM Students
CROSS JOIN Subjects
LEFT JOIN Examinations
ON (
    Students.student_id = Examinations.student_id
    AND Subjects.subject_name = Examinations.subject_name)
GROUP BY 1, 2, 3
ORDER BY Students.student_id, Subjects.subject_name;