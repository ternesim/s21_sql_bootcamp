WITH cte_visits AS (
  SELECT pz.name, COUNT(pv.pizzeria_id) as count, 'visit' as action_type
    FROM pizzeria AS pz
  JOIN person_visits AS pv ON pz.id = pv.pizzeria_id
  GROUP BY pz.name
), cte_orders AS (
  SELECT pz.name, COUNT(pz.id) as count, 'order' as action_type
    FROM menu AS m
  JOIN person_order AS po ON m.id = po.menu_id
  JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
  GROUP BY pz.name
)
SELECT cte_visits.name, COALESCE(cte_visits.count, 0) + COALESCE(cte_orders.count, 0) AS total_count FROM cte_visits 
FULL JOIN cte_orders ON cte_visits.name = cte_orders.name
ORDER BY total_count DESC, name ASC;
