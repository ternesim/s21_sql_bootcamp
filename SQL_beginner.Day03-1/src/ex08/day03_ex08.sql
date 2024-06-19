insert into menu
  SELECT 
    MAX(m.id) + 1,
    (SELECT id FROM pizzeria pz WHERE name = 'Dominos'),
    'sicilian pizza', 900
  FROM menu m;