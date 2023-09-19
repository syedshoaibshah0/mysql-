CREATE DATABASE a0;
USE a0;
CREATE TABLE faculty (
    ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    faculty_NAME NVARCHAR(50),
    email NVARCHAR(50),
    salary NVARCHAR(50),
    DepartmentHead NVARCHAR(50)
) SELECT * FROM
    faculty; 
insert into faculty values (1, "math", "s@gmail.com", "28500","shoaib");
insert into faculty values (2, "english", "y@gmail.com", "21500","yousuf");
insert into faculty values (3, "urdu", "m@gmail.com", "19500","muneeb");
insert into faculty values (4, "sicence", "ar@gmail.com", "35000","arslan");
insert into faculty values (5, "physic", "a@gmail.com", "30000","ali");
insert into faculty values (6, "bio", "z@gmail.com", "25000","zain");
insert into faculty values (null, "not", "@gmail.com", "2000",null);
insert into faculty values (null, "not", "@gmail.com", "2000",null);

CREATE TABLE student (
    Id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    NAME VARCHAR(50),
    subject VARCHAR(50),
    facultyid INT,
    FOREIGN KEY (facultyid)
        REFERENCES faculty (ID)
);
SELECT * FROM student ;
insert into student values (1, "zain", "math", 1);
insert into student values (2, "maaz", "english",  2);
insert into student values (3, "shoaib", "bio",  6);
insert into student values (4, "yousuf", "physic",  5);
insert into student values (5, "muneeb", "sicence",  4);
insert into student values (null, "unknown", "urdu",  3);
insert into student values (null, "zain", "english",  2);
insert into student values (null, "maaz", "sicence",  2);
insert into student values (null, "shoaib", "english",  2);
insert into student values (null, "yousuf", "math",  1);
insert into student values (null, "muneeb", "physic",  1);
insert into student values (null, "unknown", "math",  1);
insert into student values (null, "not", "un",  null);
insert into student values (null, "t", "un",  null);
insert into student values (null, "no", "un",  null);
insert into student values (null, "n", "un",  null);

SELECT 
    DepartmentHead, name
FROM
    faculty
        INNER JOIN
    student ON faculty.id = student.facultyid;
    
    
    SELECT 
    DepartmentHead, name
FROM
    faculty
        left JOIN
    student ON faculty.id = student.facultyid;
    
    
    SELECT 
    DepartmentHead, name
FROM
    faculty
        INNER JOIN
    student ON faculty.id = student.facultyid
    union
    SELECT 
    DepartmentHead, name
FROM
    faculty
        right JOIN
    student ON faculty.id = student.facultyid;
    