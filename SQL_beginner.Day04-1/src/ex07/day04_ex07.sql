WITH cte AS (
  SELECT pz.id FROM pizzeria pz JOIN menu m
  ON m.pizzeria_id = pz.id
  WHERE m.price < 800 AND
    pz.name NOT IN
    (SELECT * FROM mv_dmitriy_visits_and_eats) 
  LIMIT 1
)

INSERT INTO person_visits
VALUES (
          (SELECT max(id) + 1 FROM person_visits),
          (SELECT id FROM person WHERE name = 'Dmitriy'),
          (SELECT * FROM cte), 
          '2022-01-08'
      );

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;