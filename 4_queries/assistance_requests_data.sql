SELECT teachers.name as teacher_name, students.name as student_name, assignments.name as assignment_name, 
(completed_at - started_at) as assignment_request_duration
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
ORDER BY assignment_request_duration;