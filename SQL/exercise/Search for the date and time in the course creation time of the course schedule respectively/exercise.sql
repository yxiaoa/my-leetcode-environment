--Description
--Write SQL statements to query the course name name and creation time created_at from the course table courses, extract the date and time from the course creation time created_at, and use created_date and created_time as the result set column names.
--Table definition: courses
--Column Name	Type	Comments
--id	int unsigned	primary key
--name	varchar	course name
--student_count	int	student count
--created_at	datetime	course created time
--teacher_id	int unsigned	teacher id
SELECT
	*
FROM
	courses;
