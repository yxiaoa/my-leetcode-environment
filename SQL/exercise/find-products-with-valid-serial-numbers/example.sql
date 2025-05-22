/*
Input:

products table:

+------------+--------------+------------------------------------------------------+
| product_id | product_name | description                                          |
+------------+--------------+------------------------------------------------------+
| 1          | Widget A     | This is a sample product with SN1234-5678            |
| 2          | Widget B     | A product with serial SN9876-1234 in the description |
| 3          | Widget C     | Product SN1234-56789 is available now                |
| 4          | Widget D     | No serial number here                                |
| 5          | Widget E     | Check out SN4321-8765 in this description            |
+------------+--------------+------------------------------------------------------+

Output:

+------------+--------------+------------------------------------------------------+
| product_id | product_name | description                                          |
+------------+--------------+------------------------------------------------------+
| 1          | Widget A     | This is a sample product with SN1234-5678            |
| 2          | Widget B     | A product with serial SN9876-1234 in the description |
| 5          | Widget E     | Check out SN4321-8765 in this description            |
+------------+--------------+------------------------------------------------------+

Explanation:

Product 1: Valid serial number SN1234-5678
Product 2: Valid serial number SN9876-1234
Product 3: Invalid serial number SN1234-56789 (contains 5 digits after the hyphen)
Product 4: No serial number in the description
Product 5: Valid serial number SN4321-8765
The result table is ordered by product_id in ascending order.
*/

DROP TABLE IF EXISTS products;

CREATE TABLE products (
	product_id INT,
	product_name VARCHAR(255),
	description VARCHAR(255)
);

INSERT INTO products (product_id, product_name, description) VALUES
	(1, 'Widget A', 'This is a sample product with SN1234-5678'),
	(2, 'Widget B', 'A product with serial SN9876-1234 in the description'),
	(3, 'Widget C', 'Product SN1234-56789 is available now'),
	(4, 'Widget D', 'No serial number here'),
	(5, 'Widget E', 'Check out SN4321-8765 in this description');
