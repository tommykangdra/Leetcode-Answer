# Write your MySQL query statement below
WITH T1 AS (
    SELECT Num , LEAD(Num, 1) OVER (ORDER BY Id) as min1, LEAD(Num, 2) OVER (ORDER BY Id) as min2
    FROM Logs
)

SELECT DISTINCT Num AS ConsecutiveNums
FROM T1
WHERE Num = min1 
AND min1 = min2
