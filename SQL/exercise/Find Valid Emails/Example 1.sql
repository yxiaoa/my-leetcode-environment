/**
Input:

Users table:

+---------+---------------------+
| user_id | email               |
+---------+---------------------+
| 1       | alice@example.com   |
| 2       | bob_at_example.com  |
| 3       | charlie@example.net |
| 4       | david@domain.com    |
| 5       | eve@invalid         |
+---------+---------------------+
Output:

+---------+-------------------+
| user_id | email             |
+---------+-------------------+
| 1       | alice@example.com |
| 4       | david@domain.com  |
+---------+-------------------+
 */
DROP TABLE IF EXISTS Users;

CREATE TABLE
	Users (user_id INT, email VARCHAR(255));

INSERT INTO
	Users (user_id, email)
VALUES
	(1, 'alice@example.com'),
	(2, 'bob_at_example.com'),
	(3, 'charlie@example.net'),
	(4, 'david@domain.com'),
	(5, 'eve@invalid');
