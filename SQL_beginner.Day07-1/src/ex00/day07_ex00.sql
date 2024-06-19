SELECT person_id, COUNT(person_id) AS count_of_visits FROM person AS p
JOIN person_visits AS pv ON p.id = pv.person_id
GROUP BY person_id 
ORDER BY count_of_visits DESC, person_id ASC;
