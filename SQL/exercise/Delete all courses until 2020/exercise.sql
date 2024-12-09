/**
Description
Write an SQL statement to delete all courses in the course table courses with a course creation date created_at before 2020.

Table Definition: courses (course table)

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
