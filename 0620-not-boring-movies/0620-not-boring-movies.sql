# Write your MySQL query statement below
SELECT id, movie, description, rating 
FROM Cinema
WHERE CASE WHEN id % 2 = 0 THEN null ELSE id END AND description != 'boring'
ORDER BY rating DESC
