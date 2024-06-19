insert into person_visits
  SELECT
    MAX(pv.id) + 1,
    (SELECT id FROM person p WHERE name = 'Denis'),
    (SELECT id FROM pizzeria pz WHERE name = 'Dominos'),
    date '2022-02-24'
  FROM person_visits pv
  UNION ALL
  SELECT
    MAX(pv.id) + 2,
    (SELECT id FROM person p WHERE name = 'Irina'),
    (SELECT id FROM pizzeria pz WHERE name = 'Dominos'),
    date '2022-02-24'
  FROM person_visits pv;