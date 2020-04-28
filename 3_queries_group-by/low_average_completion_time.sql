SELECT students.name as student, AVG(assignment_submissions.duration) as assignment_completion_time, avg(assignments.duration) as average_estimated_duration
FROM students 
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration);