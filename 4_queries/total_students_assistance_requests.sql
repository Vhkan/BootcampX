-- Get the total number of assistance_requests for a student.
SELECT name, count(assistance_requests.*) as total_assistances
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
WHERE name = 'Elliot Dickinson'
GROUP BY name; 