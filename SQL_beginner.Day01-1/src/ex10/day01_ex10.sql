SELECT person_name, pizza_name, pizzeria.name FROM
(SELECT person.name as person_name, pizzeria_id, pizza_name FROM
 (SELECT pizza_name, person_id, pizzeria_id FROM person_order JOIN menu ON menu.id = menu_id) res 
  JOIN person ON person.id = person_id) res2 JOIN pizzeria ON pizzeria.id = pizzeria_id
ORDER BY person_name ASC, pizza_name ASC, pizza_name ASC;