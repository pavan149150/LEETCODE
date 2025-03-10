# Write your MySQL query statement below
SELECT s.product_id, 
         year AS first_year, 
         quantity, 
         price
FROM Sales s
WHERE (product_id, year) IN (
    SELECT 
         product_id,
         MIN(year)
    FROM
         sales 
    GROUP BY 
         product_id
)