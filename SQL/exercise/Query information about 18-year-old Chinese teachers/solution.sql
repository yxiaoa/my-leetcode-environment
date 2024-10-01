--Description
--Please write a SQL statement to find out the information of Chinese teachers whose age is 18 from the teachers table.
--Table definition : teachers
--columns_name	type	explaination
--id	int	primary key
--name	varchar	teacher's name
--email	varchar	teacher's email
--age	int	teacher's age
--country	varchar	teacher's nationality
--If there is no query result, nothing will be returned.
SELECT
	*
FROM
	teachers
WHERE
	(age = 18)
	and (country = 'CN')
