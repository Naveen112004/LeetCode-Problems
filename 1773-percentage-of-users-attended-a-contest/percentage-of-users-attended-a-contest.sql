# Write your MySQL query statement below

SELECT
    R.contest_id,
    ROUND(
        COUNT(DISTINCT R.USER_ID) * 100.0 /
        (SELECT COUNT(*) FROM USERS),
        2
    ) AS percentage
FROM REGISTER AS R
GROUP BY R.CONTEST_ID
ORDER BY PERCENTAGE DESC, R.CONTEST_ID ASC;