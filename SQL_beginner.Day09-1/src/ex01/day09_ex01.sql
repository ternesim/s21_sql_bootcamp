CREATE OR REPLACE FUNCTION fnc_trg_person_update_audit () RETURNS TRIGGER AS $trg_person_update_audit$
    BEGIN
        IF (TG_OP = 'UPDATE') THEN
            INSERT INTO person_audit SELECT now(), 'U', new.id, new.name, new.age, new.gender, new.address;
        END IF;
        RETURN NULL;
    END;
$trg_person_update_audit$ LANGUAGE plpgsql;
CREATE OR REPLACE TRIGGER trg_person_update_audit
AFTER UPDATE ON person FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_update_audit ();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;