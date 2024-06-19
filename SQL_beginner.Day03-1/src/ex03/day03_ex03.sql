WITH tab AS (
  SELECT pz.name,
  (
    SELECT COUNT(pv.id) FROM person_visits pv
    JOIN person p ON pv.person_id = p.id
    WHERE pv.pizzeria_id = pz.id AND p.gender = 'male'
  ) as male,
  (
    SELECT COUNT(pv.id) FROM person_visits pv
    JOIN person p ON pv.person_id = p.id
    WHERE pv.pizzeria_id = pz.id AND p.gender = 'female'
  ) as female
  FROM pizzeria pz
)

SELECT name as pizzeria_name FROM tab 
WHERE male != female
ORDER BY 1;