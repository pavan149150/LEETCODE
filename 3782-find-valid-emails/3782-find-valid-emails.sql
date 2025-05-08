# Write your MySQL query statement below
SELECT * 
FROM Users 
WHERE email regexp'^[A-Za-z0-9]+@[a-zA-Z]+.com$'