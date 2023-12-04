-- Select the teacher's name, student's name, assignment's name if it has one, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.

SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assignments
JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
JOIN students ON student_id = students.id
JOIN teachers ON assistance_requests.teacher_id = teachers.id
ORDER BY duration;


