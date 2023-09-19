Create database  Family ;
use Family;
CREATE TABLE FAMILY 
(Id int primary key auto_increment NOT NULL,
Name varchar(20) ,
DOB date ,
FatherName int ,
FOREIGN KEY(FatherName)  REFERENCES Family(Id));
select * from family;
insert into FAMILY (Name,DOB)values('Syed juman Shah Jalani','1947-1-1');
insert into FAMILY (Name,DOB,FatherName)values('Syed Akber Shah Jalani','1971-1-1',1);
insert into FAMILY (Name,DOB,FatherName)values('Syed Akram Shah Jalani','1972-2-1',1);
insert into FAMILY (Name,DOB,FatherName)values('Syed Akhtar Shah Jalani','1980-3-1',1);
insert into FAMILY (Name,DOB,FatherName)values('Syed Manzoor Shah Jalani','1982-4-1',1);
insert into FAMILY (Name,DOB,FatherName)values('Syed Munawer Shah Jalani','1986-5-1',1);
insert into FAMILY (Name,DOB,FatherName)values('Syed Muzafer Shah Jalani','1988-6-1',1);
insert into FAMILY (Name,DOB,FatherName)values('Syed Anwar Shah Jalani','1990-7-1',1);
insert into FAMILY (Name,DOB,FatherName)values('Syed Shoaib Shah Jalani','2003-4-20',4);
insert into FAMILY (Name,DOB,FatherName)values('Syed Muneeb Shah Jalani','2006-4-09',4);

select a.name as'Name' , b.name as 'Father Name' from 
Family a 
inner join 
Family b 
on a.FatherName=b.Id;

select a.name as'Name' , b.name as 'Father Name' from Family a ,Family b where  a.FatherName=b.Id;