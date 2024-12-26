/**
Input:
Accounts table:
+------------+--------+
| account_id | income |
+------------+--------+
| 3          | 108939 |
| 2          | 12747  |
| 8          | 87709  |
| 6          | 91796  |
+------------+--------+
Output:
+----------------+----------------+
| category       | accounts_count |
+----------------+----------------+
| Low Salary     | 1              |
| Average Salary | 0              |
| High Salary    | 3              |
+----------------+----------------+
Explanation:
Low Salary: Account 2.
Average Salary: No accounts.
High Salary: Accounts 3, 6, and 8.
 */
DROP TABLE IF EXISTS Accounts;

CREATE TABLE
	'Accounts' ('account_id', 'income');

INSERT INTO
	Accounts (account_id, income)
VALUES
	(3, 108939),
	(2, 12747),
	(8, 87709),
	(6, 91796);
