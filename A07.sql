create database a07;
use a07;
CREATE TABLE empoyee (
    Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Name TEXT(100),
    Salary INT
);
 insert into empoyee (name , salary) values("Ali", 19000); 
 insert into empoyee (name , salary) values("Zain", 20000); 
 insert into empoyee (name , salary) values("khuzaima", 45000); 
 insert into empoyee (name , salary) values("Yousuf", 50000); 
 insert into empoyee (name , salary) values("Muneeb", 40000); 
 insert into empoyee (name , salary) values("Shoaib", 35000); 
 insert into empoyee (name , salary) values("Maqsood", 13000); 
 insert into empoyee (name , salary) values("Mudasir", 10000); 
 insert into empoyee (name , salary) values("Maaz", 20000); 
 insert into empoyee (name , salary) values("Hasnain", 5000);
SELECT 
    *
FROM
    empoyee;
    
SELECT 
    name,
    salary,
    CASE
        WHEN salary >= 30000 THEN 'BEST EMPLOYEE'
        WHEN salary <= 29999 AND salary >= 20000 THEN 'Normal Employee'
        WHEN salary <= 19999 AND salary >= 15000 THEN 'Employee'
        ELSE 'Salary Not Confirmed'
    END AS 'STATUS'
FROM
    empoyee
