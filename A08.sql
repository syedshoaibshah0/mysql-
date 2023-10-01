CREATE DATABASE S;

USE S;

CREATE TABLE MARKSHEET (
ROLL_NUMBER INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
STUDENTS_NAME VARCHAR(250),
PASSING_YEAR INT,
EXAMINATION VARCHAR(250),
PERCENTAGE INT
);

SELECT * FROM MARKSHEET;

INSERT INTO MARKSHEET VALUES (311000, "Misbah", 2020, "ANNUAL", 81),
                             (311001, "laiba ", 2021, "ANNUAL", 82),
                             (311002, "MARYAM ", 2020, "ANNUAL", 71),
                             (NULL, " UMAIMA",2020  , "ANNUAL ", 65 ),
                             (NULL, "FATMAH ",2020  , " ANNUAL",55  ),
						     (NULL, "ZAINAB ", 2020 , " ANNUAL",  31),
                             (NULL, "AFFAN ",2019  , "SUPPLY ",71  ),    
                             (NULL, "OSMAN ",2020  , "ANNUAL ",81  ),
                             (NULL, "HASSAN ",2018  , "SUPPLY ", 55 ),
							 (NULL, "HAMZA ",2021  , "ANNUAL ",88  ),
                             (NULL, "ABUBAKAR ",2020  , "ANNUAL ",66  ),
                             (NULL, "OMER ",2020  , "ANNUAL ",88);
                             
CREATE TABLE MatricResult AS
SELECT STUDENTS_NAME, PERCENTAGE,
    CASE
        WHEN PERCENTAGE >= 80 THEN "A+"      
        WHEN PERCENTAGE >= 70 AND PERCENTAGE <= 79 THEN "A"  
        WHEN PERCENTAGE >= 60 AND PERCENTAGE <= 69 THEN "B" 
        WHEN PERCENTAGE >= 50 AND PERCENTAGE <= 59 THEN "C" 
        WHEN PERCENTAGE >= 40 AND PERCENTAGE <= 49 THEN "D"  
        ELSE "FAIL"
    END AS GRADE
FROM MARKSHEET;

SELECT * FROM MatricResult;



CREATE TABLE Matric_Result (
StudentsName VARCHAR(250),
PERCENTAGE INT,
Grade VARCHAR(20)
);

INSERT INTO Matric_Result (StudentsName, PERCENTAGE, Grade)
SELECT STUDENTS_NAME, PERCENTAGE,
    CASE
        WHEN PERCENTAGE >= 80 THEN "A+"
        WHEN PERCENTAGE >= 70 AND PERCENTAGE <= 79 THEN "A"
        WHEN PERCENTAGE >= 60 AND PERCENTAGE <= 69 THEN "B"
        WHEN PERCENTAGE >= 50 AND PERCENTAGE <= 59 THEN "C"
        WHEN PERCENTAGE >= 40 AND PERCENTAGE <= 49 THEN "D"
        ELSE "FAIL"
    END AS GRADE
FROM MARKSHEET;

SELECT * FROM Matric_Result;