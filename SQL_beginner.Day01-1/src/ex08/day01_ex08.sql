SELECT order_date,
name || ' (age:' || age || ')' AS person_information FROM person_order
NATURAL JOIN (SELECT name, age, id as person_id FROM person) res
ORDER BY order_date ASC, person_information ASC;