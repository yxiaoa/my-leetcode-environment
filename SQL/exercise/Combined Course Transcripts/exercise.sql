/**
Description
Now you have two grade tables course1_score and course2_score with the same structure, Write SQL statements to find the names of students whose names exist in both tables, and display the grades of these students in the result table for each of the two courses via the score1 and score2 columns, and sort them ascending by the dictionary order of their names.

Table Definition 1: course1_score (course1's score table)

column name	type	comment
id	int unsigned	primary key
name	varchar	student name
score	int	course 1 score
Table Definition 2: course2_score (course2's score table)

column name	type	comment
id	int unsigned	primary key
name	varchar	student name
score	int	course 2 score
 */
SELECT
	*
FROM
	course1_score
UNION
SELECT
	*
FROM
	course2_score
