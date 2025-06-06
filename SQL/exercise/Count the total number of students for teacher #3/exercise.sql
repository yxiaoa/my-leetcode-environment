/*
Write an SQL statement to count the total number of students with teacher_id of 3 in the courses table courses, and use select_student_sum as the result set column name.

Table Definition: courses (courses table)

column name	type	comment
id	int	primary key
name	varchar	course name
student_count	int	number of students
created_at	datetime	course start time
teacher_id	int	teacher id
 */
SELECT
	*
FROM
	courses
