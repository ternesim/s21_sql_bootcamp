SELECT missing_date::date
FROM generate_series(date '2022-01-01', date '2022-01-10', '1 day') AS missing_date
LEFT JOIN 
(SELECT * FROM person_visits WHERE person_id = 1 OR person_id = 2) res2
ON missing_date = visit_date WHERE id IS NULL
ORDER BY missing_date