WITH cte AS (
    SELECT person_id, pizzeria_id, COUNT(menu_id) FROM person_order po 
    JOIN menu m ON m.id = po.menu_id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
    GROUP BY pizzeria_id, person_id
)

INSERT INTO person_discounts(id, person_id, pizzeria_id, discount)
  SELECT 
  ROW_NUMBER() OVER() AS id,
  person_id,
  pizzeria_id,
  (
    CASE
      WHEN count = 1 THEN 10.5
      WHEN count = 2 THEN 22
      ELSE 30
    END
  ) as discount
  FROM cte
  ORDER BY id;