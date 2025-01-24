/**
Description
Write an SQL statement to query the average of the course count student_count in the course table courses, return the field name avg_student_count, and round the result to two decimal places.
Table definition: courses

| column name | type | comment |
| ------------- | -------- | -------- |a
| id | int | primary key |
| name | varchar | course name |
| student_count | int | number of students |
| created_at | date | class start time |
| teacher_id | int | teacher id |

The column names returned by the query need to be the same as the case of the column names output by the sample
If the number of students in the input data is NULL, the data will be skipped.
If the number of students in the input data is all NULL, or the input data is empty, then return NULL
 */

SELECT * FROM courses;
