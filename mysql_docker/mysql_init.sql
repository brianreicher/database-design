CREATE DATABASE Enrollment;

SHOW DATABASES;

USE Enrollment;


GRANT ALL PRIVILEGES ON Enrollment.* TO 'root'@'%';

CREATE TABLE students (
    nu_id char(10) PRIMARY KEY,
    firstName varchar(50)
);

SELECT *
FROM students;