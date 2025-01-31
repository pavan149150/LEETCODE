# Write your MySQL query statement below
SELECT name, bonus 
FROM Employee E1
LEFT JOIN Bonus B1 ON
E1.empid = B1.empid
WHERE bonus < 1000 OR bonus is NULL