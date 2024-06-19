SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE SELECT pizza_name, pz.name as pizzeria_name FROM menu m
JOIN pizzeria pz ON pz.id = m.pizzeria_id; QUERY PLAN