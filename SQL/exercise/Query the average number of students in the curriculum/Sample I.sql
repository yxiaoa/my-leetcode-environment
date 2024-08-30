DROP TABLE IF EXISTS courses;

CREATE TABLE
	'courses' (
		'id',
		'name',
		'student_count',
		'created_at',
		'teacher_id',
		PRIMARY KEY ('id')
	);

INSERT INTO
	courses (id, name, student_count, created_at, teacher_id)
VALUES
	(1, 'Advanced Algorithms', 880, '2020-06-01', 4),
	(2, 'System Design', 1350, '2020-07-18', 3),
	(3, 'Django', 780, '2020-02-28', 3),
	(4, 'Web', 340, '2020-04-22', 4),
	(5, 'Big Data', 700, '2020-09-11', 1);

--After running your SQL statement, the table should return.
--average_student_count
--810
