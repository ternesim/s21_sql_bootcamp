SELECT name as object_name FROM 
(SELECT name FROM person ORDER BY name) results
UNION ALL
SELECT pizza_name as object_name FROM 
(SELECT pizza_name FROM menu ORDER BY pizza_name) results1;