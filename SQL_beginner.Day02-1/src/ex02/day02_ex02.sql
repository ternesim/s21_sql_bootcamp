SELECT (CASE WHEN p.name IS NULL THEN  '-' ELSE  p.name END) AS person_name,
 visit_date, pz.name FROM person p 
FULL JOIN (SELECT * FROM person_visits pv 
  WHERE pv.visit_date BETWEEN '2022-01-01' AND '2022-01-03') res1 ON p.id = res1.person_id 
FULL JOIN pizzeria pz ON pz.id = res1.pizzeria_id
ORDER BY person_name, visit_date, pz.name;