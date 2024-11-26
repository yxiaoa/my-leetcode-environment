/**
Input:
Seat table:
+----+---------+
| id | student |
+----+---------+
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |
+----+---------+
Output:
+----+---------+
| id | student |
+----+---------+
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |
+----+---------+
Explanation:
Note that if the number of students is odd, there is no need to change the last one's seat.
 */
DROP TABLE IF EXISTS Seat;

CREATE TABLE
	'Seat' (
		'id',
		'student'
	);

INSERT INTO
	Seat (id, student)
VALUES
	(1, 'Abbot'),
	(2, 'Doris'),
	(3, 'Emerson'),
	(4, 'Green'),
	(5, 'Jeames');


