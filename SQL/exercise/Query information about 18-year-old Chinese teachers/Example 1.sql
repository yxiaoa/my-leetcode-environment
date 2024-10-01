DROP TABLE IF EXISTS teachers;

CREATE TABLE
	'teachers' (
		'id',
		'name',
		'email',
		'age',
		'country',
		PRIMARY KEY ('id')
	);

INSERT INTO
	teachers (id, name, email, age, country)
VALUES
	(1,'Eastern Heretic','eastern.heretic@gmail.com',20,'UK'),
	(2,'Northern Beggar','northern.beggar@qq.com',21,'CN'),
	(3,'Western Venom','western.venom@163.com',28,'USA'),
	(4,'Southern Emperor','southern.emperor@qq.com',21,'JP'),
	(5,'Linghu Chong', '' ,18,'CN');

--After running your SQL statement, the table should return:

--id	name	email	age	country
--5	Linghu Chong		18	CN
