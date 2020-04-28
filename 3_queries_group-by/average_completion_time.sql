SELECT students.name as student, AVG(assignment_submissions.duration) as assignment_completion_time 
FROM students 
JOIN assignment_submissions ON student_id = students.id
WHERE AVG(assignment_submissions.duration) < 
GROUP BY student
ORDER BY AVG(assignment_submissions.duration) DESC;