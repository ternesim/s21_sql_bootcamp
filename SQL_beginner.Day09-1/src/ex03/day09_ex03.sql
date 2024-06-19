drop trigger trg_person_insert_audit on person;
drop trigger trg_person_update_audit on person;
drop trigger trg_person_delete_audit on person;
drop function fnc_trg_person_delete_audit;
drop function fnc_trg_person_update_audit;
drop function fnc_trg_person_insert_audit;
TRUNCATE person_audit;

CREATE OR REPLACE FUNCTION fnc_trg_person_audit () RETURNS TRIGGER AS $trg_person_audit$
    BEGIN
        IF (TG_OP = 'UPDATE') THEN
            INSERT INTO person_audit SELECT now(), 'U', new.id, new.name, new.age, new.gender, new.address;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO person_audit SELECT now(), 'I', new.id, new.name, new.age, new.gender, new.address;
        ELSIF (TG_OP = 'DELETE') THEN
            INSERT INTO person_audit SELECT now(), 'D', old.id, old.name, old.age, old.gender, old.address;
        END IF;
        RETURN NULL;
    END;
$trg_person_audit$ LANGUAGE plpgsql;
CREATE OR REPLACE TRIGGER trg_person_audit 
AFTER DELETE OR INSERT OR UPDATE 
ON person FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_audit ();

INSERT INTO person(id, name, age, gender, address)
VALUES ((SELECT MAX(id)+1 FROM person),'Damir', 22, 'male', 'Irkutsk');
UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;
DELETE FROM person WHERE id = 10;