--Description
--Write an SQL query to find all duplicate e-mails in the Person table.
--Table definition: Person
--column name	type	comment
--id	int	primary key
--email	varchar	email
--The values in the email column are not case-sensitive, i.e., Abc@example.com and abc@example.com are determined to be duplicate mailboxes.
--The returned result values are uniformly lowercase.
SELECT
	lower(email) AS duplicate
FROM
	Person
GROUP BY
	duplicate
HAVING
	COUNT(duplicate) > 1;
