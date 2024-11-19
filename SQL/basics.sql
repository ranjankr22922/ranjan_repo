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
