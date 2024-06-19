CREATE VIEW v_symmetric_union AS

WITH
  R AS (
    SELECT person_id FROM person_visits pv WHERE pv.visit_date = '2022-01-02' 
  ),
  S AS (
    SELECT person_id FROM person_visits pv WHERE pv.visit_date = '2022-01-06' 
  )

SELECT person_id FROM
  (
    SELECT person_id FROM R
    UNION 
    SELECT person_id FROM S
  ) r1
WHERE person_id NOT IN 
  (
    SELECT person_id FROM R
    INTERSECT
    SELECT person_id FROM S
  )
ORDER BY 1;