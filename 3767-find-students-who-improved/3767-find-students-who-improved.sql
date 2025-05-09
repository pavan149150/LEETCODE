WITH CTE AS
(SELECT s1.*, 
       s2.exam_date AS next_date, 
       s2.score AS nxt_score, 
       ROW_NUMBER() OVER(PARTITION BY student_id, subject ORDER BY s1.exam_date, s2.exam_date DESC) as rnk
FROM Scores s1
LEFT JOIN Scores s2 ON 
s1.student_id = s2.student_id AND
s1.subject = s2.subject AND 
s1.exam_date < s2.exam_date
WHERE s2.exam_date IS NOT NULL
)

SELECT student_id, subject, score AS first_score, nxt_score AS latest_score
FROM CTE 
WHERE rnk = 1
AND nxt_score > score
ORDER BY student_id, subject;
