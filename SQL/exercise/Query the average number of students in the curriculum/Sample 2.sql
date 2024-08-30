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
	(1, 'Advanced Algorithms', 0, '2020-6-1', 4),
	(2, 'System Design', 0, '2020-7-18', 3),
	(3, 'Django', 0, '2020-2-28', 3);

--After running your SQL statement, the table should return.
--average_student_count
--0
