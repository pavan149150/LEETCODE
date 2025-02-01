# Write your MySQL query statement below
SELECT s1.student_id, s1.student_name, s2.subject_name, IFNULL(COUNT(e1.student_id), 0) AS attended_exams
FROM Students s1 CROSS JOIN 
Subjects s2 LEFT JOIN Examinations e1 ON 
e1.student_id = s1.student_id AND e1.subject_name = s2.subject_name
GROUP BY s1.student_id, s1.student_name,s2.subject_name
ORDER BY s1.student_id, s2.subject_name