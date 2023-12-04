-- Get the total number of assistance_requests for a teacher.
SELECT name, count(*) as total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY name;
