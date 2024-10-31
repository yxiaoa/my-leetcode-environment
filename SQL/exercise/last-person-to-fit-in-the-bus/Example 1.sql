/*
Input:
Queue table:
+-----------+-------------+--------+------+
| person_id | person_name | weight | turn |
+-----------+-------------+--------+------+
| 5         | Alice       | 250    | 1    |
| 4         | Bob         | 175    | 5    |
| 3         | Alex        | 350    | 2    |
| 6         | John Cena   | 400    | 3    |
| 1         | Winston     | 500    | 6    |
| 2         | Marie       | 200    | 4    |
+-----------+-------------+--------+------+
Output:
+-------------+
| person_name |
+-------------+
| John Cena   |
+-------------+
Explanation: The following table is ordered by the turn for simplicity.
+------+----+-----------+--------+--------------+
| Turn | ID | Name      | Weight | Total Weight |
+------+----+-----------+--------+--------------+
| 1    | 5  | Alice     | 250    | 250          |
| 2    | 3  | Alex      | 350    | 600          |
| 3    | 6  | John Cena | 400    | 1000         | (last person to board)
| 4    | 2  | Marie     | 200    | 1200         | (cannot board)
| 5    | 4  | Bob       | 175    | ___          |
| 6    | 1  | Winston   | 500    | ___          |
+------+----+-----------+--------+--------------+
 */
DROP TABLE IF EXISTS Queue;

CREATE TABLE
	'Queue' (
		'person_id',
		'person_name',
		'weight',
		'turn'
	);

INSERT INTO
	Queue (person_id, person_name, weight, turn)
VALUES
	(5, 'Alice', 250, 1),
	(4, 'Bob', 175, 5),
	(3, 'Alex', 350, 2),
	(6, 'John Cena', 400, 3),
	(1, 'Winston', 500, 6),
	(2, 'Marie', 200, 4);
