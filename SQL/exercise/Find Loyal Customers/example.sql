/**
Input:

customer_transactions table:

+----------------+-------------+------------------+--------+------------------+
| transaction_id | customer_id | transaction_date | amount | transaction_type |
+----------------+-------------+------------------+--------+------------------+
| 1              | 101         | 2024-01-05       | 150.00 | purchase         |
| 2              | 101         | 2024-01-15       | 200.00 | purchase         |
| 3              | 101         | 2024-02-10       | 180.00 | purchase         |
| 4              | 101         | 2024-02-20       | 250.00 | purchase         |
| 5              | 102         | 2024-01-10       | 100.00 | purchase         |
| 6              | 102         | 2024-01-12       | 120.00 | purchase         |
| 7              | 102         | 2024-01-15       | 80.00  | refund           |
| 8              | 102         | 2024-01-18       | 90.00  | refund           |
| 9              | 102         | 2024-02-15       | 130.00 | purchase         |
| 10             | 103         | 2024-01-01       | 500.00 | purchase         |
| 11             | 103         | 2024-01-02       | 450.00 | purchase         |
| 12             | 103         | 2024-01-03       | 400.00 | purchase         |
| 13             | 104         | 2024-01-01       | 200.00 | purchase         |
| 14             | 104         | 2024-02-01       | 250.00 | purchase         |
| 15             | 104         | 2024-02-15       | 300.00 | purchase         |
| 16             | 104         | 2024-03-01       | 350.00 | purchase         |
| 17             | 104         | 2024-03-10       | 280.00 | purchase         |
| 18             | 104         | 2024-03-15       | 100.00 | refund           |
+----------------+-------------+------------------+--------+------------------+
Output:

+-------------+
| customer_id |
+-------------+
| 101         |
| 104         |
+-------------+
 */
DROP TABLE IF EXISTS customer_transactions;

CREATE TABLE
	customer_transactions (
		transaction_id INT PRIMARY KEY,
		customer_id INT,
		transaction_date DATE,
		amount DECIMAL(10, 2),
		transaction_type VARCHAR(20)
	);

INSERT INTO
	customer_transactions (
		transaction_id,
		customer_id,
		transaction_date,
		amount,
		transaction_type
	)
VALUES
	(1, 101, '2024-01-05', 150.00, 'purchase'),
	(2, 101, '2024-01-15', 200.00, 'purchase'),
	(3, 101, '2024-02-10', 180.00, 'purchase'),
	(4, 101, '2024-02-20', 250.00, 'purchase'),
	(5, 102, '2024-01-10', 100.00, 'purchase'),
	(6, 102, '2024-01-12', 120.00, 'purchase'),
	(7, 102, '2024-01-15', 80.00, 'refund'),
	(8, 102, '2024-01-18', 90.00, 'refund'),
	(9, 102, '2024-02-15', 130.00, 'purchase'),
	(10, 103, '2024-01-01', 500.00, 'purchase'),
	(11, 103, '2024-01-02', 450.00, 'purchase'),
	(12, 103, '2024-01-03', 400.00, 'purchase'),
	(13, 104, '2024-01-01', 200.00, 'purchase'),
	(14, 104, '2024-02-01', 250.00, 'purchase'),
	(15, 104, '2024-02-15', 300.00, 'purchase'),
	(16, 104, '2024-03-01', 350.00, 'purchase'),
	(17, 104, '2024-03-10', 280.00, 'purchase'),
	(18, 104, '2024-03-15', 100.00, 'refund');
