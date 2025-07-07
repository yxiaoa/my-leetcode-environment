SELECT
	name
FROM
	customer
WHERE
	referrer_id IS NULL
	OR referrer_id != 1;
