WITH cte_visits AS (
  SELECT pz.name, COUNT(pv.pizzeria_id) as count, 'visit' as action_type
    FROM pizzeria AS pz
  JOIN person_visits AS pv ON pz.id = pv.pizzeria_id
  GROUP BY pz.name
  ORDER BY count DESC LIMIT 3
), cte_orders AS (
  SELECT pz.name, COUNT(pz.id) as count, 'order' as action_type
    FROM menu AS m
  JOIN person_order AS po ON m.id = po.menu_id
  JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
  GROUP BY pz.name
  ORDER BY count DESC LIMIT 3
)
SELECT * FROM cte_orders 
UNION 
SELECT * FROM cte_visits
ORDER BY action_type ASC, count DESC;