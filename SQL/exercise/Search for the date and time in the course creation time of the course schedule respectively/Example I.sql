/*
Table content: courses (Course schedule)

id	name	student_count	created_at	teacher_id
1	Senior Algorithm	880	2020-06-01 09:10:12	4
2	System Design	1350	2020-07-18 10:11:12	3
3	Django	780	2020-02-29 12:10:12	3
4	Web	340	2020-04-22 13:01:12	4
5	Big Data	700	2020-09-11 16:01:12	1
6	Artificial Intelligence	1660	2018-05-13 18:12:30	3
7	Java P6+	780	2019-01-19 13:31:12	3
8	Data Analysis	500	2019-07-12 13:01:12	1
10	Object Oriented Design	300	2020-08-08 13:01:12	4
12	Dynamic Programming	2000	2018-08-18 20:01:12	1
After running your SQL statement, the table should return

name	created_at	created_date	created_time
Senior Algorithm	2020-06-01T09:10:12	2020-06-01	09:10:12
System Design	2020-07-18T10:11:12	2020-07-18	10:11:12
Django	2020-02-29T12:10:12	2020-02-29	12:10:12
Web	2020-04-22T13:01:12	2020-04-22	13:01:12
Big Data	2020-09-11T16:01:12	2020-09-11	16:01:12
Artificial Intelligence	2018-05-13T18:12:30	2018-05-13	18:12:30
Java P6+	2019-01-19T13:31:12	2019-01-19	13:31:12
Data Analysis	2019-07-12T13:01:12	2019-07-12	13:01:12
Object Oriented Design	2020-08-08T13:01:12	2020-08-08	13:01:12
Dynamic Programming	2018-08-18T20:01:12	2018-08-18	20:01:12
*/

DROP TABLE IF EXISTS courses;

CREATE TABLE courses (
	id INT UNSIGNED PRIMARY KEY,
	name VARCHAR(255),
	student_count INT,
	created_at DATETIME,
	teacher_id INT UNSIGNED
);

INSERT INTO courses (id, name, student_count, created_at, teacher_id) VALUES
(1, 'Senior Algorithm', 880, '2020-06-01 09:10:12', 4),
(2, 'System Design', 1350, '2020-07-18 10:11:12', 3),
(3, 'Django', 780, '2020-02-29 12:10:12', 3),
(4, 'Web', 340, '2020-04-22 13:01:12', 4),
(5, 'Big Data', 700, '2020-09-11 16:01:12', 1),
(6, 'Artificial Intelligence', 1660, '2018-05-13 18:12:30', 3),
(7, 'Java P6+', 780, '2019-01-19 13:31:12', 3),
(8, 'Data Analysis', 500, '2019-07-12 13:01:12', 1),
(10, 'Object Oriented Design', 300, '2020-08-08 13:01:12', 4),
(12, 'Dynamic Programming', 2000, '2018-08-18 20:01:12', 1);
