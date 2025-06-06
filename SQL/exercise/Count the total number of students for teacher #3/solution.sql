SELECT
	sum(student_count) AS select_student_sum
FROM
	courses
WHERE
	teacher_id = 3;
