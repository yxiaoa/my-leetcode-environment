SELECT
	customer_id
FROM
	customer_transactions
GROUP BY
	customer_id
HAVING
	SUM(
		CASE
			WHEN transaction_type = 'purchase' THEN 1
			ELSE 0
		END
	) >= 3
	AND CAST(
		julianday (MAX(transaction_date)) - julianday (MIN(transaction_date)) AS INTEGER
	) >= 30
	AND (
		1.0 * SUM(
			CASE
				WHEN transaction_type = 'refund' THEN 1
				ELSE 0
			END
		) / COUNT(*)
	) < 0.2
ORDER BY
	customer_id ASC;
