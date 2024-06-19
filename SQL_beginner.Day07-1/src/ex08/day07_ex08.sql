WITH cte_olap AS (
  SELECT pz.name AS pz_name, po.id AS po_id, address FROM person_order AS po
  JOIN menu AS m ON po.menu_id = m.id
  JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
  JOIN person AS p ON po.person_id = p.id
)
SELECT address, cte_olap.pz_name as name, count(cte_olap.po_id) AS count_of_orders 
  FROM cte_olap
GROUP BY cte_olap.pz_name, address
ORDER BY address, pz_name;