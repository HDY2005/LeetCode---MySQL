-- Write a solution to find the number of times each student attended each exam.

-- Return the result table ordered by student_id and subject_name.

SELECT
    s.student_id,
    s.student_name,
    sb.subject_name,
    (
        SELECT COUNT(*)
        FROM Examinations e
        WHERE e.student_id = s.student_id
          AND e.subject_name = sb.subject_name
    ) AS attended_exams
FROM Students s
CROSS JOIN Subjects sb
ORDER BY s.student_id, sb.subject_name;