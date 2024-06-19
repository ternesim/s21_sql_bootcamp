WITH max_id AS (
    SELECT MAX(id) as id FROM person
  ),
  tab AS (
    SELECT 
      (SELECT MAX(id) FROM person_order) + person_id as id,
      person_id,
      (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
      '2022-02-25'::DATE
    FROM generate_series(1, (SELECT id::INT FROM max_id)) as person_id
  )

INSERT INTO person_order
  SELECT * FROM tab;