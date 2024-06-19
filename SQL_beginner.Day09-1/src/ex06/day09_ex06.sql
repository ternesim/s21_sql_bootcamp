CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date 
    (in pperson VARCHAR DEFAULT 'Dmitriy', pprice INT DEFAULT 500, in pdate DATE DEFAULT '2022-01-08') 
    RETURNS TABLE(name VARCHAR) AS $$
  BEGIN 
    RETURN QUERY
    SELECT DISTINCT pz.name FROM person AS p
    JOIN person_visits AS pv ON p.id = pv.person_id
    JOIN pizzeria AS pz ON pv.pizzeria_id = pz.id
    JOIN menu AS m ON pz.id = m.pizzeria_id
    WHERE p.name = pperson AND pv.visit_date = pdate AND m.price < pprice;
  END
$$ LANGUAGE plpgsql;
select * from fnc_person_visits_and_eats_on_date(pprice := 800);
select * from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');