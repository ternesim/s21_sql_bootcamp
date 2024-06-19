WITH tab AS (
  SELECT name, gender, m.pizza_name FROM person p
  JOIN person_order po ON p.id = po.person_id
  JOIN menu m ON po.menu_id = m.id
  WHERE gender = 'female'
  AND (m.pizza_name = 'pepperoni pizza' OR m.pizza_name = 'cheese pizza')
)

SELECT name FROM (
  SELECT name FROM tab WHERE pizza_name = 'pepperoni pizza'
  INTERSECT
  SELECT name FROM tab WHERE pizza_name = 'cheese pizza') r
ORDER BY 1;