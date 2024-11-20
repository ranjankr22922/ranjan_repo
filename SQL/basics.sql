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
CREATE TABLE employee (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(50),
    JOB VARCHAR(50),
    MGR INT,
    HIREDATE VARCHAR(20),
    SAL DECIMAL(10, 2),
    COMM DECIMAL(10, 2),
    DEPTNO INT
);
INSERT INTO employee (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES
(7839, 'KING', 'PRESIDENT', NULL, '17-NOV-81', 5000, NULL, 10),
(7698, 'BLAKE', 'MANAGER', 7839, '01-MAY-81', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '09-JUN-81', 2450, NULL, 10),
(7566, 'JONES', 'MANAGER', 7839, '02-APR-81', 2975, NULL, 20),
(7788, 'SCOTT', 'ANALYST', 7566, '19-APR-87', 3000, NULL, 20),
(7902, 'FORD', 'ANALYST', 7566, '03-DEC-81', 3000, NULL, 20),
(7369, 'SMITH', 'CLERK', 7902, '17-DEC-80', 800, NULL, 20);

--DELETE (rows)
DELETE FROM student WHERE stu_name = "CHANDAN KUMAR";
DELETE FROM employee WHERE deptno = 20 AND job = 'MANAGER';
DELETE FROM employee;    -- TRUNCATE FROM employee;  (ROLLBACK is possible in DELETE but not in TRUNCATE)

------------------------------------------------------------------------------------------------------------

--ALTER ADD(columns)
ALTER TABLE student ADD stream VARCHAR(50);    --Added 'stream' column
ALTER TABLE student ADD address NUMBER;
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

--DESCRIBE (DESC)
PRAGMA table_info(STUDENT);

--CREATE
CREATE TABLE emp AS SELECT * FROM employee;
CREATE TABLE emp1 AS SELECT * FROM emp WHERE 1=2;  --Create table from another table without copying data of old table(only structure).

------------------------------------------------------------------------------------------------------------------------------------------

--AND
SELECT * FROM emp WHERE job = "MANAGER" AND sal >= 2500;
SELECT * FROM emp WHERE job = "MANAGER" AND job = "ANALYST";  --Noone can have 2 jobs.

--OR
SELECT * FROM emp WHERE job = "MANAGER" OR job = "ANALYST";

SELECT * FROM emp WHERE (sal>1500 OR job = "MANAGER") AND (DEPTNO=10 OR DEPTNO=30)

------------------------------------------------------------------------------------------------------------------------------------------

SELECT JOB FROM EMP;
--DISTINCT
SELECT DISTINCT JOB FROM EMP;
SELECT DISTINCT JOB, SAL FROM EMP;
SELECT DISTINCT STREAM FROM Student;  --Considers NULL to be UNIQUE values.

SELECT JOB, COUNT(*) FROM EMP GROUP BY JOB HAVING COUNT(*)>1;  --Without using DISTINCT keyword.

SELECT JOB, COUNT(*) FROM EMP GROUP BY JOB HAVING COUNT(*)=1;  --UNIQUE

------------------------------------------------------------------------------------------------------------------------------------------

--IN
SELECT * FROM employee WHERE ename IN ('BLAKE', 'CLARK', 'SCOTT');
SELECT * FROM employee WHERE ename IN ('BLAKE', 'CLARK', 'SCOTTY');  --Doesn't provide data for SCOTTY
SELECT * FROM employee WHERE ename NOT IN ('BLAKE', 'CLARK', 'SCOTT');
DELETE FROM employee WHERE ENAME IN ('KING', 'JONES');

SELECT MAX(SAL) FROM EMP 
WHERE SAL NOT IN(SELECT MAX(SAL) FROM EMP);  --Select 2nd Highest Salary

------------------------------------------------------------------------------------------------------------------------------------------
