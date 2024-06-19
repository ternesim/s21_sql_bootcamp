WITH tab AS (
  SELECT pz.name,
  (
    SELECT COUNT(po.id) FROM person_order po
    JOIN person p ON po.person_id = p.id
    JOIN menu m ON m.id = po.menu_id
    WHERE m.pizzeria_id = pz.id AND p.gender = 'male'
  ) as male,
  (
    SELECT COUNT(po.id) FROM person_order po
    JOIN person p ON po.person_id = p.id
    JOIN menu m ON m.id = po.menu_id
    WHERE m.pizzeria_id = pz.id AND p.gender = 'female'
  ) as female
  FROM pizzeria pz
)

SELECT name as pizzeria_name FROM tab 
WHERE (male = 0 AND female != 0)
OR (female = 0 AND male != 0)
ORDER BY 1;