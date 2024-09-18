DROP TABLE IF EXISTS Person;

CREATE TABLE
	Person (id INT PRIMARY KEY, email VARCHAR(255));

INSERT INTO
	Person (id, email)
VALUES
	(1, 'abc@h.com'),
	(2, 'qwe@h.com'),
	(3, 'xyz@h.com'),
	(4, 'qwe@h.com'),
	(5, 'xyz@h.com'),
	(6, 'Abc@h.com');

--According to the above input, the query result is returned as follows:
--duplicate
--abc@h.com
--xyz@h.com
--qwe@h.com
