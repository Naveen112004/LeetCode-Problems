# Write your MySQL query statement below

DELETE A
FROM Person AS A
INNER JOIN Person AS B
ON A.email = B.email
AND A.id > B.id;