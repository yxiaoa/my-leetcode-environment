/**
Table Contents : courses

id	name	student_count	created_at	teacher_id
1	Advanced Algorithms	NULL	2020-6-1	4
2	System Design	NULL	2020-7-18	3
3	Django	NULL	2020-2-29	3
4	Web	NULL	2020-4-22	4
5	Big Data	NULL	2020-9-11	1
After running your SQL statement, the table should return.

avg_student_count
NULL
Because the student count in sample 2 is NULL, the average result returned is also NULL
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
	(1, 'Advanced Algorithms', NULL, '2020-6-1', 4),
	(2, 'System Design', NULL, '2020-7-18', 3),
	(3, 'Django', NULL, '2020-2-29', 3),
	(4, 'Web', NULL, '2020-4-22', 4),
	(5, 'Big Data', NULL, '2020-9-11', 1);
