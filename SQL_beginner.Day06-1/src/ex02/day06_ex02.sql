SELECT p.name, pizza_name, price, 
  (price * (1 - discount / 100))::INT AS discount_price, 
  pz.name AS pizzeria_name
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN person p ON p.id = po.person_id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
JOIN person_discounts pd 
  ON pd.person_id = p.id
  AND pd.pizzeria_id = pz.id
ORDER BY p.name, m.pizza_name;