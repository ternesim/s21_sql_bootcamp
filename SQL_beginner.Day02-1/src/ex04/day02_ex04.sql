SELECT pizza_name, p.name as pizzeria_name, price
FROM menu m JOIN pizzeria p ON m.pizzeria_id = p.id
WHERE m.pizza_name = 'mushroom pizza' OR m.pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, pizzeria_name;