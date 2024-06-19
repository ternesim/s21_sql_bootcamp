SELECT DISTINCT name FROM person AS p
JOIN person_order AS po ON p.id = po.person_id
ORDER BY 1;