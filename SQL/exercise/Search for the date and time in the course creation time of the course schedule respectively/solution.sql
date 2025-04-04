SELECT
	name,
	created_at,
	DATE (created_at) AS created_date,
	TIME(created_at) AS created_time
FROM
	courses;
