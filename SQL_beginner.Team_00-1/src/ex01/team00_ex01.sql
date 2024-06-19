SELECT total_cost, tour
FROM v_tsp
WHERE total_cost = (SELECT MIN(total_cost) 
					FROM v_tsp)
UNION
SELECT total_cost, tour
FROM v_tsp
WHERE total_cost = (SELECT MAX(total_cost) 
					FROM v_tsp)
ORDER BY total_cost, tour;