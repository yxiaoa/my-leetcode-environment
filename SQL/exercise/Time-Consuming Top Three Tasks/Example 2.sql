/**
input：

id	start_date	end_date
0	2019-01-06	2019-04-16
1	2022-09-28	2022-12-29
output：

id	diff
0	100
1	92
 */
DROP TABLE IF EXISTS Tasks;

CREATE TABLE
	Tasks ('id' INT, 'start_date' DATE, 'end_date' DATE);

INSERT INTO
	Tasks (id, start_date, end_date)
VALUES
	(0, '2019-01-06', '2019-04-16'),
	(1, '2022-09-28', '2022-12-29');
