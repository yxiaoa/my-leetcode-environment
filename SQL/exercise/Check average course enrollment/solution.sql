SELECT
	ROUND(AVG(student_count), 2) AS avg_student_count
FROM
	courses
WHERE
	student_count IS NOT NULL;
