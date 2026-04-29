/**
Input:
RequestAccepted table:
+--------------+-------------+-------------+
| requester_id | accepter_id | accept_date |
+--------------+-------------+-------------+
| 1            | 2           | 2016/06/03  |
| 1            | 3           | 2016/06/08  |
| 2            | 3           | 2016/06/08  |
| 3            | 4           | 2016/06/09  |
+--------------+-------------+-------------+
Output:
+----+-----+
| id | num |
+----+-----+
| 3  | 3   |
+----+-----+
 */
DROP TABLE IF EXISTS RequestAccepted;

CREATE TABLE
	RequestAccepted (
		requester_id int,
		accepter_id int,
		accept_date date,
		PRIMARY KEY (requester_id, accepter_id)
	);

INSERT INTO
	RequestAccepted (requester_id, accepter_id, accept_date)
VALUES
	(1, 2, '2016/06/03'),
	(1, 3, '2016/06/08'),
	(2, 3, '2016/06/08'),
	(3, 4, '2016/06/09');
