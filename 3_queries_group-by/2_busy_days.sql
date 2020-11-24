SELECT day, COUNT(*) AS assignments_per_day
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;