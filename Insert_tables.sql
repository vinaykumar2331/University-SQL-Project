use university_db;

-- Insert Students
INSERT INTO Students VALUES
(1, 'Alice Sharma', 'alice@gmail.com', 2022),
(2, 'Bob Mehta', 'bob@gmail.com', 2021),
(3, 'Charlie Reddy', 'charlie@gmail.com', 2023),
(4, 'Divya Rao', 'divya@gmail.com', 2022),
(5, 'Ethan Das', 'ethan@gmail.com', 2021),
(6, 'Fiona Khan', 'fiona@gmail.com', 2023),
(7, 'Gautam Verma', 'gautam@gmail.com', 2020),
(8, 'Hina Kapoor', 'hina@gmail.com', 2022),
(9, 'Irfan Ali', 'irfan@gmail.com', 2021),
(10, 'Jaya Pillai', 'jaya@gmail.com', 2023);

-- Insert Professors
INSERT INTO Professors VALUES
(1, 'Dr. Smith', 'Computer Science'),
(2, 'Dr. Johnson', 'Mathematics'),
(3, 'Dr. Arora', 'Physics'),
(4, 'Dr. Nair', 'Electronics'),
(5, 'Dr. Fernandes', 'Humanities');

-- Insert Courses
INSERT INTO Courses VALUES
(1, 'Data Structures', 1),
(2, 'Algorithms', 1),
(3, 'Calculus', 2),
(4, 'Linear Algebra', 2),
(5, 'Quantum Mechanics', 3),
(6, 'Digital Circuits', 4),
(7, 'Ethics and Society', 5),
(8, 'Computer Networks', 1);

-- Insert Enrollments (random distribution)
INSERT INTO Enrollments VALUES
(1, 1, 1, 'A'),
(2, 1, 2, 'B'),
(3, 1, 3, 'A'),
(4, 2, 1, 'C'),
(5, 2, 4, 'B'),
(6, 2, 5, 'B'),
(7, 3, 1, 'A'),
(8, 3, 6, 'A'),
(9, 3, 7, 'A'),
(10, 4, 3, 'B'),
(11, 4, 4, 'C'),
(12, 4, 5, 'A'),
(13, 5, 6, 'B'),
(14, 5, 2, 'C'),
(15, 5, 8, 'A'),
(16, 6, 3, 'B'),
(17, 6, 4, 'A'),
(18, 6, 5, 'C'),
(19, 7, 7, 'A'),
(20, 7, 8, 'B'),
(21, 8, 1, 'B'),
(22, 8, 6, 'A'),
(23, 8, 7, 'A'),
(24, 9, 2, 'A'),
(25, 9, 3, 'A'),
(26, 9, 4, 'B'),
(27, 10, 1, 'A'),
(28, 10, 2, 'B'),
(29, 10, 3, 'A'),
(30, 10, 8, 'B');
