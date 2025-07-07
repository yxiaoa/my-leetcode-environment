/*
Input

id	name	referrer_id
1	Joanne Ferry	null
2	Roberta Nader Sr.	2
3	Dr. Gwen Jacobson	1
4	Geraldine Kiehn III	2
5	Gwendolyn Howe IV	2
Output

name
Joanne Ferry
Roberta Nader Sr.
Geraldine Kiehn III
Gwendolyn Howe IV
*/

DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    referrer_id INT
);

INSERT INTO customer (id, name, referrer_id) VALUES
(1, 'Joanne Ferry', NULL),
(2, 'Roberta Nader Sr.', 2),
(3, 'Dr. Gwen Jacobson', 1),
(4, 'Geraldine Kiehn III', 2),
(5, 'Gwendolyn Howe IV', 2);
