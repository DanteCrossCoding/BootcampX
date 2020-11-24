SELECT day, count(day) as assignments_per_day
FROM assignments
GROUP BY day
ORDER BY day;

