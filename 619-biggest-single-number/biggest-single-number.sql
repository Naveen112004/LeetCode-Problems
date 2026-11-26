# Write your MySQL query statement below
SELECT MAX(NUM) AS num
FROM (
    SELECT NUM
    FROM MYNUMBERS
    GROUP BY NUM
    HAVING COUNT(*) =1
)AS T;