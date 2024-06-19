WITH 
  visit AS (
    SELECT pz.name FROM person_visits pv 
    JOIN person p ON p.id = pv.person_id
    JOIN pizzeria pz ON pz.id = pv.pizzeria_id
    WHERE p.name = 'Andrey'
  ),
  order1 AS (
    SELECT pz.name FROM person_order po 
    JOIN person p ON p.id = po.person_id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE p.name = 'Andrey'
  )

SELECT name as pizzeria_name FROM visit
WHERE name NOT IN (SELECT * FROM order1)
ORDER BY 1;