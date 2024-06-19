insert into person_order
  SELECT
    MAX(po.id) + 1,
    (SELECT id FROM person p WHERE name = 'Denis'),
    (SELECT id FROM menu m WHERE pizza_name = 'sicilian pizza'),
    date '2022-02-24'
  FROM person_order po
  UNION ALL
  SELECT
    MAX(po.id) + 2,
    (SELECT id FROM person p WHERE name = 'Irina'),
    (SELECT id FROM menu m WHERE pizza_name = 'sicilian pizza'),
    date '2022-02-24'
  FROM person_order po;