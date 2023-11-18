CREATE DATABASE SCH;

USE SCH;

-- ADD 
-- DROP 
-- RENAME
-- CHANGE
-- MODIFY

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"Anil",78,"C","Pune"),
(102,"Aman",89,"C","Mumbai"),
(103,"Anil",80,"B","Delhi"),
(104,"Samar",90,"A","Pune"),
(105,"Nayan",75,"C","Pune");

ALTER TABLE student
CHANGE name full_name VARCHAR(50);

DELETE FROM student
WHERE marks<80;

ALTER TABLE student
DROP COLUMN grade;

SELECT * FROM student;
