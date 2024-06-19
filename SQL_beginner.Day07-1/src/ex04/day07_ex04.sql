  SELECT p.name, COUNT(pv.pizzeria_id) as count_of_visits
    FROM person_visits AS pv 
  JOIN person AS p ON pv.person_id = p.id
  GROUP BY p.name
  HAVING COUNT(pv.pizzeria_id) > 3;