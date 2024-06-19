SELECT m.pizza_name, pz.name as pizzeria_name FROM person_order po 
JOIN person p ON po.person_id = p.id 
JOIN menu m ON po.menu_id = m.id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
WHERE p.name = 'Denis' OR p.name = 'Anna'
ORDER BY 1, 2;