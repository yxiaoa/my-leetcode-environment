/**
Table Contents : courses

id	name	student_count	created_at	teacher_id
1	Advanced Algorithms	880	2020-6-1	4
2	System Design	1350	2020-7-18	3
3	Django	780	2020-2-29	3
4	Web	340	2020-4-22	4
5	Big Data	700	2020-9-11	1
6	Artificial Intelligence	1660	2018-5-13	3
7	Java P6+	780	2019-1-19	3
8	Data Analysis	500	2019-7-12	1
10	Object Oriented Design	300	2020-8-8	4
12	Dynamic Programming	2000	2018-8-18	1
After the DELETE code is executed, we will execute SELECT * FROM courses and the table should return.

id	name	student_count	created_at	teacher_id
1	Advanced Algorithms	880	2020-6-1	4
2	System Design	1350	2020-7-18	3
3	Django	780	2020-2-29	3
4	Web	340	2020-4-22	4
5	Big Data	700	2020-9-11	1
10	Object Oriented Design	300	2020-8-8	4
 */

DROP TABLE IF EXISTS courses;

CREATE TABLE
	'courses' (
		'id',
		'name',
		'student_count',
		'created_at',
		'teacher_id'
	);

INSERT INTO
	courses (id, name, student_count, created_at, teacher_id)
VALUES
	(1, 'Advanced Algorithms', 880, '2020-6-1', 4),
	(2, 'System Design', 1350, '2020-7-18', 3),
	(3, 'Django', 780, '2020-2-29', 3),
	(4, 'Web', 340, '2020-4-22', 4),
	(5, 'Big Data', 700, '2020-9-11', 1),
	(6, 'Artificial Intelligence', 1660, '2018-5-13', 3),
	(7, 'Java P6+', 780, '2019-1-19', 3),
	(8, 'Data Analysis', 500, '2019-7-12', 1),
	(10, 'Object Oriented Design', 300, '2020-8-8', 4),
	(12, 'Dynamic Programming', 2000, '2018-8-18', 1);