SELECT assignments.day as day, COUNT(assignments.id), SUM(assignments.duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;