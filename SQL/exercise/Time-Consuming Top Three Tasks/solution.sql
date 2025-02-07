SELECT
	id,
	--CAST((julianday(end_date) - julianday(start_date)) AS INT) AS diff
	DATEDIFF (end_date, start_date) AS diff
FROM
	Tasks
ORDER BY
	diff DESC,
	id
LIMIT
	3
