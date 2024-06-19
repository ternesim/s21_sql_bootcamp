SELECT action_date, name as person_name FROM 
(SELECT  order_date AS action_date, person_id FROM person_order
INTERSECT
SELECT  visit_date AS action_date, person_id FROM person_visits) res,
person WHERE person_id = id
ORDER BY action_date ASC, name DESC;

