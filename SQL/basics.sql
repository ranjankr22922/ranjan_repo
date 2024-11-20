--CREATE
CREATE TABLE student(
  stu_id INT PRIMARY KEY,
  stu_name VARCHAR(50) NOT NULL,
  branch VARCHAR(10),
  dob DATE,
  score INT
);

INSERT INTO student VALUES (1, 'RANJAN KUMAR', 'MCA', '06-12-2002', 67);
INSERT INTO student VALUES (2, 'KUNDAN KUMAR', 'Mining', '28-Sept-1998', 98);

INSERT INTO student (stu_id, stu_name, score) VALUES (3, 'CHANDAN KUMAR', 99);

--SELECT
SELECT * FROM student;
SELECT score, branch, stu_id FROM student;
SELECT * FROM student WHERE score > 95;
SELECT score, score/10.0 AS cgpa FROM student;
SELECT score + 1 FROM student;

SELECT * FROM student WHERE SCORE >= 95 AND SCORE <= 99;

--BETWEEN
SELECT * FROM student WHERE SCORE BETWEEN 95 AND 99;
SELECT * FROM student WHERE SCORE NOT BETWEEN 95 AND 100;    --NOT BETWEEN
--SELECT * FROM student WHERE DOB BETWEEN '1998-01-01' AND '2003-01-01';  (TO_DATE)

--DROP
DROP TABLE student;

--SQL is not case sensitive.
-----------------------------------------------------------------------------------

--INSERT
CREATE TABLE sample1 ( 
    NAME VARCHAR(50), 
    AGE INT
);

INSERT INTO sample1 (NAME, AGE) 
VALUES 
    ('Chandana', 21),
    ('Prash', 21),
    ('Trish', 20),
    ('Sanj', 22),
    ('Srinu', 21);

INSERT INTO sample1
VALUES 
    ('Chandana', 21),
    ('Prash', 21),
    ('Trish', 20),
    ('Sanj', 22),
    ('Srinu', 21);


CREATE TABLE sample2 ( 
    NAME VARCHAR(50), 
    AGE INT
);

INSERT INTO sample1 VALUES ('RANJAN KUMAR', 67);
INSERT INTO sample2 VALUES ('KUNDAN KUMAR', 98);

INSERT INTO sample2 SELECT * FROM sample1 WHERE AGE BETWEEN 20 AND 21;    --BETWEEN
DELETE FROM sample1 WHERE AGE NOT BETWEEN 20 AND 21;

INSERT INTO sample2 SELECT * FROM sample1;

SELECT NAME, stu_id FROM sample1, student;

INSERT INTO sample2(NAME) SELECT(NAME) FROM sample1;
INSERT INTO sample2(NAME) SELECT NAME FROM sample1;

--DELETE
DELETE FROM sample2;    

INSERT INTO sample2 SELECT * FROM sample1 WHERE AGE = 21
---------------------------------------------------------------------------------------
  
--UPDATE
UPDATE student 
SET BRANCH = "SUCCESS"
WHERE SCORE > 95;

---------------------------------------------------------------------------------------

--DELETE (rows)
DELETE FROM student WHERE stu_name = "CHANDAN KUMAR";
DELETE FROM employee WHERE deptno = 20 AND job = 'MANAGER';
DELETE FROM employee;    -- TRUNCATE FROM employee;  (ROLLBACK is possible in DELETE but not in TRUNCATE)

------------------------------------------------------------------------------------------------------------

--ALTER ADD(columns)
ALTER TABLE student ADD stream VARCHAR(50);    --Added 'stream' column
--ALTER TABLE student ADD job VARCHAR(50), salary VARCHAR(20);
--ALTER TABLE student ADD PRIMARY KEY(stu_id);
ALTER TABLE student ADD gender CHAR(1) DEFAULT 'F';  --Added 'gender' with 'F' in every data.

--ALTER DROP
ALTER TABLE student DROP score;
ALTER TABLE student DROP score, gender;
-- ALTER TABLE student DROP CONSTRAINT PRIMARY KEY;

--ALTER MODIFY
-- ALTER TABLE student MODIFY branch VARCHAR(50);
-- ALTER TABLE student MODIFY branch INT;

-- ALTER RENAME
ALTER TABLE student RENAME branch TO stream;

------------------------------------------------------------------------------------------------------------

--LIKE

-- GENERAL PATTERNS
-- PATTERN	MEANING
-- 'r%' 		Matches strings which start with 'r'
-- '%r'  		Matches strings which end with 'r'
-- 'r%t'		Matches strings which contain the start with ‘r' and end with 't'.
-- '%tri%'	Matches strings which contain the substring ‘tri' in them at any position.
-- '_tri%'	Matches strings which contain the substring ‘tri' in them at the second position.
-- '_r%'		Matches strings which contain 'r' at the second position.
-- 'r__%'  	Matches strings which start with 'r' and contain at least 2 more characters.

SELECT ENAME FROM employee WHERE ENAME LIKE 'S%';
SELECT ENAME FROM employee WHERE ENAME LIKE '%H';
SELECT ENAME FROM employee WHERE ENAME LIKE '%K%';
SELECT JOB FROM employee WHERE JOB LIKE '%A%';
SELECT ENAME, HIREDATE FROM employee WHERE HIREDATE LIKE '%DEC%';
SELECT ENAME FROM employee WHERE ENAME LIKE '____';  --Employee having exactly 4 letters in thier name.
SELECT ENAME FROM employee WHERE ENAME LIKE '_O%';
SELECT ENAME FROM employee WHERE ENAME LIKE 'K%G';
SELECT ENAME FROM employee WHERE ENAME NOT LIKE '%O%';  --NOT LIKE

------------------------------------------------------------------------------------------------------------

