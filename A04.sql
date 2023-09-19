CREATE DATABASE foram;

USE foram;

CREATE TABLE info (
First_NAME VARCHAR(50) not null,
Last_NAME VARCHAR(50),
Email_id VARCHAR(250) unique,
Mobile_Number VARCHAR(10) unique,
Gender varchar (6),
Date_Of_Birth date default "2003-04-20",
Address VARCHAR(250),
city varchar(50) default "Karachi",
Pin_Code VARCHAR(6),
State varchar(50),
Conntry VARCHAR(50) default "Pakistan" ,
Hobbies VARCHAR(50) default "Recitation of Quran",
Qualification VARCHAR(50),
Courses_Applied_for VARCHAR(50)  

);

SELECT * FROM info; 
