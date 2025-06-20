/*
Table Contents 1: course1_score

id	name	score
1	Alice	100
2	Bob	90
3	Chalice	95
4	David	90
5	Edward	85
Table Contents 2: course2_score

id	name	score
1	Chalice	98
2	Bill	90
3	Alice	95
4	Ethan	85
After running your SQL statement, the table should return:

name	score1	score2
Alice	100	95
Chalice	95	98
 */
DROP TABLE IF EXISTS course1_score;

DROP TABLE IF EXISTS course2_score;

CREATE TABLE
	course1_score (
		id INT UNSIGNED PRIMARY KEY,
		name VARCHAR(255),
		score INT
	);

CREATE TABLE
	course2_score (
		id INT UNSIGNED PRIMARY KEY,
		name VARCHAR(255),
		score INT
	);

INSERT INTO
	course1_score (id, name, score)
VALUES
	(1, 'Alice', 100),
	(2, 'Bob', 90),
	(3, 'Chalice', 95),
	(4, 'David', 90),
	(5, 'Edward', 85);

INSERT INTO
	course2_score (id, name, score)
VALUES
	(1, 'Chalice', 98),
	(2, 'Bill', 90),
	(3, 'Alice', 95),
	(4, 'Ethan', 85);
