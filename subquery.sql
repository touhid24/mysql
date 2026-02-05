CREATE DATABASE school;
USE school;

CREATE TABLE students (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

INSERT INTO students (rollno, name, marks) VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

SELECT name
FROM students
WHERE rollno IN (
    SELECT rollno
    FROM students
    WHERE rollno % 2 = 0
);
