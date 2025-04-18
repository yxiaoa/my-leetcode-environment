/*
Description
Write an SQL statement to delete the data of all rows in the courses table without deleting the table.

Table Definition: courses

column name	type	comment
id	int	primary key
name	varchar	course name
student_count	int	student count
created_at	date	course start time
teacher_id	int	teacher id
 */
SELECT
	*
FROM
	courses;
