SELECT b.employee_id,
       b.name,
       COUNT(a.employee_id) reports_count,
       round(avg(a.age), 0) average_age
  FROM Employees a
       LEFT JOIN
       Employees b ON (a.reports_to = b.employee_id)
 WHERE b.employee_id IS NOT NULL
 GROUP BY b.employee_id;
