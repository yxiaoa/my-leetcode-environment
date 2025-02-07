/*
In this question, you need to use the Tasks table,

column	type
id	int
start_date	date
end_date	date
Find the top three tasks that take the most time to complete (If there are less than three records, only the first n records will be returned). You can see the required format for the output in the example.

If there are multiple tasks that consume the same amount of time, the task with the smaller id is returned in priority
 */
SELECT
	*
FROM
	Tasks;
