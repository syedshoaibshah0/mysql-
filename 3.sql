create database syed1;
use syed1;
create table sssj (
id INT primary key not null auto_increment,
NAME varchar(250)  not null,
AGE int,
CONTACT varchar(250),
SALARY INT
)
select * from SSSJ;
INSERT INTO SSSJ value (NULL, "SHOAIB", "20","0318" ,"50000" );
INSERT INTO SSSJ value (NULL, "SHOAIB", "20","0318" ,"9000" );
INSERT INTO SSSJ value (NULL, "MAQSOOD", "20","0318" ,"50000" );
INSERT INTO SSSJ value (NULL, "MUDASIR", "20","0318" ,"8000" );
INSERT INTO SSSJ value (NULL, "MUQASID", "20","0318" ,"50000" );
INSERT INTO SSSJ value (NULL, "MAZZ", "20","0318" ,"7000" );
INSERT INTO SSSJ value (NULL, "ALI", "20","0318" ,"50000" );
INSERT INTO SSSJ value (NULL, "YOUSUF", "20","0318" ,"10000" );
INSERT INTO SSSJ value (NULL, "MUNEEB", "20","0318" ,"50000" );
INSERT INTO SSSJ value (NULL, "ZAIB", "20","0318" ,"9500" );

INSERT INTO SSSJ value (NULL, "20","0318" ,"9500" );


select * FROM SSSJ WHERE SALARY >=10000 AND ID = 1;

select * FROM SSSJ WHERE SALARY =10000;

select * FROM SSSJ WHERE SALARY <=10000 AND ID = 1 ;



