/**
Input:
Scores table:
+----+-------+
| id | score |
+----+-------+
| 1  | 3.50  |
| 2  | 3.65  |
| 3  | 4.00  |
| 4  | 3.85  |
| 5  | 4.00  |
| 6  | 3.65  |
+----+-------+
Output:
+-------+------+
| score | rank |
+-------+------+
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |
+-------+------+
 */
DROP TABLE IF EXISTS Scores;

CREATE TABLE
	Scores (id INT, score DECIMAL(3, 2));

INSERT INTO
	Scores (id, score)
VALUES
	(1, 3.50),
	(2, 3.65),
	(3, 4.00),
	(4, 3.85),
	(5, 4.00),
	(6, 3.65);
