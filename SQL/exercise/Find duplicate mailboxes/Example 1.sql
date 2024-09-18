DROP TABLE IF EXISTS Person;

CREATE TABLE
	Person (id INT PRIMARY KEY, email VARCHAR(255));

INSERT INTO
	Person (id, email)
VALUES
	(1, 'abc@h.com'),
	(2, 'abc@h.com'),
	(3, 'xyz@h.com');

--According to the above input, the query result is returned as follows:
--duplicate
--abc@h.com
