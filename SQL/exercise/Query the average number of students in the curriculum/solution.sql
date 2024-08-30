--Description
--Write an SQL statement to query the average number of students student_count in the courses table courses and return the result column named as average_student_count.
--Table Definition: courses (Course Schedule)
--Column Name	Type	Comments
--id	int	primary key
--name	varchar	course name
--student_count	int	number of students
--created_at	date	class start time
--teacher_id	int	teacher id
--If student_count is empty, nothing is returned
--The name of the column that returns the statistics needs to be changed
--If the query does not return any results, nothing will be returned
SELECT
	AVG(student_count) AS average_student_count
FROM
	courses;
