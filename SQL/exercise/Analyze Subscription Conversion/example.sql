/**
Input:

UserActivity table:

+---------+---------------+---------------+-------------------+
| user_id | activity_date | activity_type | activity_duration |
+---------+---------------+---------------+-------------------+
| 1       | 2023-01-01    | free_trial    | 45                |
| 1       | 2023-01-02    | free_trial    | 30                |
| 1       | 2023-01-05    | free_trial    | 60                |
| 1       | 2023-01-10    | paid          | 75                |
| 1       | 2023-01-12    | paid          | 90                |
| 1       | 2023-01-15    | paid          | 65                |
| 2       | 2023-02-01    | free_trial    | 55                |
| 2       | 2023-02-03    | free_trial    | 25                |
| 2       | 2023-02-07    | free_trial    | 50                |
| 2       | 2023-02-10    | cancelled     | 0                 |
| 3       | 2023-03-05    | free_trial    | 70                |
| 3       | 2023-03-06    | free_trial    | 60                |
| 3       | 2023-03-08    | free_trial    | 80                |
| 3       | 2023-03-12    | paid          | 50                |
| 3       | 2023-03-15    | paid          | 55                |
| 3       | 2023-03-20    | paid          | 85                |
| 4       | 2023-04-01    | free_trial    | 40                |
| 4       | 2023-04-03    | free_trial    | 35                |
| 4       | 2023-04-05    | paid          | 45                |
| 4       | 2023-04-07    | cancelled     | 0                 |
+---------+---------------+---------------+-------------------+
Output:

+---------+--------------------+-------------------+
| user_id | trial_avg_duration | paid_avg_duration |
+---------+--------------------+-------------------+
| 1       | 45.00              | 76.67             |
| 3       | 70.00              | 63.33             |
| 4       | 37.50              | 45.00             |
+---------+--------------------+-------------------+
 */
drop table if exists UserActivity;

create table
	UserActivity (
		user_id int,
		activity_date date,
		activity_type varchar(20),
		activity_duration int,
		primary key (user_id, activity_date, activity_type)
	);

INSERT INTO
	UserActivity (
		user_id,
		activity_date,
		activity_type,
		activity_duration
	)
VALUES
	(1, '2023-01-01', 'free_trial', 45),
	(1, '2023-01-02', 'free_trial', 30),
	(1, '2023-01-05', 'free_trial', 60),
	(1, '2023-01-10', 'paid', 75),
	(1, '2023-01-12', 'paid', 90),
	(1, '2023-01-15', 'paid', 65),
	(2, '2023-02-01', 'free_trial', 55),
	(2, '2023-02-03', 'free_trial', 25),
	(2, '2023-02-07', 'free_trial', 50),
	(2, '2023-02-10', 'cancelled', 0),
	(3, '2023-03-05', 'free_trial', 70),
	(3, '2023-03-06', 'free_trial', 60),
	(3, '2023-03-08', 'free_trial', 80),
	(3, '2023-03-12', 'paid', 50),
	(3, '2023-03-15', 'paid', 55),
	(3, '2023-03-20', 'paid', 85),
	(4, '2023-04-01', 'free_trial', 40),
	(4, '2023-04-03', 'free_trial', 35),
	(4, '2023-04-05', 'paid', 45),
	(4, '2023-04-07', 'cancelled', 0);
