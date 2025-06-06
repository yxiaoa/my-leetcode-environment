/*
Table Contents : courses

id	name	student_count	create_time	teacher_id
1	Senior Algorithm	880	2020-06-01	4
2	System Design	1350	2020-07-18	3
3	Django	780	2020-02-29	3
4	Web	340	2020-04-22	4
5	Big Data	700	2020-09-11	1
6	Artificial Intelligence	1660	2018-05-13	3
7	Java P6+	780	2019-01-19	3
8	Data Analysis	500	2019-07-12	1
10	Object Oriented Design	300	2020-08-08	4
12	Dynamic Programming	2000	2018-08-18	1
After running your SQL statement, the table should return.

select_student_sum
4570
*/

DROP TABLE IF EXISTS courses;

CREATE TABLE courses (
	id INT PRIMARY KEY,
	name VARCHAR(255),
	student_count INT,
	created_at DATETIME,
	teacher_id INT
);

INSERT INTO courses (id, name, student_count, created_at, teacher_id) VALUES
	(1, 'Senior Algorithm', 880, '2020-06-01', 4),
	(2, 'System Design', 1350, '2020-07-18', 3),
	(3, 'Django', 780, '2020-02-29', 3),
	(4, 'Web', 340, '2020-04-22', 4),
	(5, 'Big Data', 700, '2020-09-11', 1),
	(6, 'Artificial Intelligence', 1660, '2018-05-13', 3),
	(7, 'Java P6+', 780, '2019-01-19', 3),
	(8, 'Data Analysis', 500, '2019-07-12', 1),
	(10, 'Object Oriented Design', 300, '2020-08-08', 4),
	(12, 'Dynamic Programming', 2000, '2018-08-18', 1);
