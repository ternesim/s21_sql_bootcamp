WITH tab AS (
  SELECT pizza_name, pz.name, price FROM menu m
  JOIN pizzeria pz ON m.pizzeria_id = pz.id
)

SELECT t1.pizza_name, t1.name as pizzeria_name1,
 t2.name as pizzeria_name2, t1.price FROM tab t1
JOIN tab t2 ON t1.price = t2.price 
  AND t1.pizza_name = t2.pizza_name
  AND t1.name != t2.name
ORDER BY t1.pizza_name;