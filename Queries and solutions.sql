-- 1. Get all students
SELECT * 
FROM 
	Students;

-- 2. List all courses offered
SELECT * 
FROM 
	Courses;

-- 3. Find students who enrolled in 2022
SELECT * 
FROM 
	Students 
WHERE 
	enrollment_year = 2022;

-- 4. List all professors in 'Computer Science' department
SELECT * 
FROM 
	Professors 
WHERE 
	department = 'Computer Science';
    
-- 5.Show students and their enrolled courses using JOIN
SELECT 
    s.name AS Student_name,
    c.name AS Course_name
FROM students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- 6.Count how many students are enrolled in each course
SELECT 
	c.name as course_name,
    COUNT(e.student_id) as student_count
FROM
	Courses c
JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id;
	
-- 7.Get names of students who enrolled in courses taught by a specific professor
-- Lets assume the specific professor is "Dr. Smith"
SELECT
	s.name as student_name,
    c.name as course_name,
    p.name as professor_name
FROM
	Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Professors p ON c.professor_id = p.professor_id
WHERE 
	p.name = "Dr. johnson";

-- 8.List students who are not enrolled in any course (subquery)
SELECT 
	name
FROM
	Students
WHERE student_id NOT IN (select student_id from enrollments);
	
-- 9.List courses that have no students enrolled
SELECT 
	c.name
FROM 
	Courses c 
LEFT JOIN
	Enrollments e ON c.course_id = e.course_id
where e.enrollment_id IS NULL; 

-- 10.List Professors with the Number of Students Enrolled Across All Their Courses
SELECT 
    p.name AS professor_name,
    COUNT(DISTINCT e.student_id) AS total_students
FROM 
    Professors p
LEFT JOIN 
    Courses c ON p.professor_id = c.professor_id
LEFT JOIN 
    Enrollments e ON c.course_id = e.course_id
GROUP BY 
    p.professor_id, p.name
ORDER BY 
    total_students DESC;

 	