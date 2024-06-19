WITH RECURSIVE days(d) AS (
  SELECT date '2022-01-01'
  UNION ALL
  SELECT d + 1 FROM days WHERE d < '2022-01-10'
) SELECT d AS missing_date FROM days
LEFT JOIN 
(SELECT * FROM person_visits WHERE person_id = 1 OR person_id = 2) res2
ON d = visit_date WHERE id IS NULL
ORDER BY d;