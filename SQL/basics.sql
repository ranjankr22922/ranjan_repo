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
