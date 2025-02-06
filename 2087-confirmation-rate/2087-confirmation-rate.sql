# Write your MySQL query statement below
WITH CTE AS (
SELECT s.user_id AS user_id, COUNT(*) AS ttl_cnt,
       sum(case when action = 'confirmed' then 1 else 0 end) AS con_cnt
FROM Signups s
LEFT JOIN Confirmations c ON
s.user_id = c.user_id
GROUP BY s.user_id
)

SELECT user_id, ROUND(con_cnt / ttl_cnt, 2) AS confirmation_rate
FROM CTE 
