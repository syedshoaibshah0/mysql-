CREATE DATABASE SSS;

USE SSS;
CREATE TABLE INFO(
SERIAL_NO INT primary key auto_increment NOT null,
AGE INT,
CONTACT VARCHAR(250),
SALARY INT
);
SELECT * FROM INFO;


INSERT INTO INFO VALUES(NULL, "18", "0318", "10000");

