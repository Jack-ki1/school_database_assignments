show databases;

CREATE DATABASE UniversitySystem;
USE UniversitySystem;


CREATE TABLE Student (
    roll_no VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE Course (
    course_code VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(100),
    credit_hours INT
);

CREATE TABLE Enrollment (
    roll_no VARCHAR(10),
    course_code VARCHAR(10),
    FOREIGN KEY (roll_no) REFERENCES Student(roll_no),
    FOREIGN KEY (course_code) REFERENCES Course(course_code)
);

select * from Student;
SET SQL_SAFE_UPDATES = 0; -- You can disable the safety check just for your current session by running --

-- DELETE  FROM Enrollment; -- Delete first from Enrollment to avoid foreign key errors
-- DELETE FROM Student; --
 -- DELETE FROM Course; --
-- SET SQL_SAFE_UPDATES = 1; -- If needed, you can re-enable safe updates after you're done: --











