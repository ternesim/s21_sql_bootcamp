SELECT name, count_of_visits FROM (
SELECT person_id, COUNT(pv.id) AS count_of_visits FROM person AS p
JOIN person_visits AS pv ON p.id = pv.person_id
GROUP BY person_id 
ORDER BY count_of_visits DESC, person_id ASC) AS t
JOIN person AS p ON p.id = person_id
ORDER BY count_of_visits DESC LIMIT 4