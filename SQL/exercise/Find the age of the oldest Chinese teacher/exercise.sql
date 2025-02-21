/**
Description
Write an SQL statement that uses the aggregate function MAX() to query the oldest Chinese teacher from the teachers table and return the age of that teacher, with the column name max_age.
Table definition: teachers (Teachers table)

column name	type	comment
id	int	primary key
name	varchar	teacher's name
email	varchar	teacher's email
age	int	teacher's age
country	varchar	teacher's nationality
 */
SELECT
	*
FROM
	teachers;
