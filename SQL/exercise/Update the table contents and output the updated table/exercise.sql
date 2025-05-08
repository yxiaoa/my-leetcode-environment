/*
Description
There is a table courses with five fields: id, name, student_count, created_at, and teacher_id.
Write a SQL statement to update all the courses in the table with teacher_id = 3 to teacher_id = 5 and then output all the contents of the updated table to the console.

Table definition: courses

column name	type	comment
id	int	primary key
name	varchar	course_name
student_count	int	student_count
created_at	datetime	course_start_date
teacher_id	int	teacher id
 */
SELECT
	*
FROM
	courses;
