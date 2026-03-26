/**
Input:
Tree table:
+----+------+
| id | p_id |
+----+------+
| 1  | null |
| 2  | 1    |
| 3  | 1    |
| 4  | 2    |
| 5  | 2    |
+----+------+
Output:
+----+-------+
| id | type  |
+----+-------+
| 1  | Root  |
| 2  | Inner |
| 3  | Leaf  |
| 4  | Leaf  |
| 5  | Leaf  |
+----+-------+
 */
DROP TABLE IF EXISTS Tree;

CREATE TABLE
	Tree (id int, p_id int);

INSERT INTO
	Tree (id, p_id)
VALUES
	(1, null),
	(2, 1),
	(3, 1),
	(4, 2),
	(5, 2);
