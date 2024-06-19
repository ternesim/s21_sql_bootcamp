SELECT pz.name, COUNT(m.price) AS count_of_orders,
  ROUND(AVG(price), 2) AS avetage_price, max(m.price) AS max_price, min(m.price) AS min_price
 FROM person_order AS po
JOIN menu AS m ON po.menu_id = m.id
JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
GROUP BY pz.name
ORDER BY pz.name;