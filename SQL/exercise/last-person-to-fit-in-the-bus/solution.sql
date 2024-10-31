SELECT person_name
  FROM (
           SELECT person_name,
                  sum(weight) OVER (ORDER BY turn) AS current_weight
             FROM Queue
       )
       a
 WHERE current_weight <= 1000
 ORDER BY current_weight DESC
 LIMIT 1;
