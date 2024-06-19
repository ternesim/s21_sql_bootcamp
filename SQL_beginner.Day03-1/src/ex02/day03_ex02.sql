WITH tab AS (
  SELECT * FROM menu m
  WHERE m.id NOT IN (SELECT menu_id FROM person_order)
)

SELECT pizza_name, price, pz.name as pizzeria_name FROM tab t
JOIN pizzeria pz ON t.pizzeria_id = pz.id
ORDER BY 1, 2;