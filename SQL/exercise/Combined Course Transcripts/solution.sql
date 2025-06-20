SELECT
	c1.name,
	c1.score AS score1,
	c2.score AS score2
FROM
	course1_score AS c1
	JOIN course2_score AS c2 ON c1.name = c2.name
ORDER BY
	c1.name ASC;
