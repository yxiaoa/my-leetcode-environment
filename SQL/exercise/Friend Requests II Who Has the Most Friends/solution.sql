SELECT
	id,
	COUNT(*) num
FROM
	(
		SELECT
			accepter_id id
		FROM
			RequestAccepted
		UNION ALL
		SELECT
			requester_id
		FROM
			RequestAccepted
	) t
GROUP BY
	id
ORDER BY
	num DESC
LIMIT
	1;
