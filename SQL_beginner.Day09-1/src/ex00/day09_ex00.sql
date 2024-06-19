DROP TABLE IF EXISTS person_audit;

CREATE TABLE person_audit (
  created timestamptz DEFAULT NOW() NOT NULL,
  type_event CHAR(1) DEFAULT 'I' NOT NULL,
  row_id BIGINT NOT NULL,
  name VARCHAR,
  age INTEGER,
  gender VARCHAR,
  address VARCHAR,
  CONSTRAINT ch_type_event CHECK (type_event IN ('I', 'U', 'D'))
);

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit() RETURNS TRIGGER AS $trg_person_insert_audit$
    BEGIN
        IF (TG_OP = 'INSERT') THEN
            INSERT INTO person_audit SELECT now(), 'I', new.id, new.name, new.age, new.gender, new.address;
        END IF;
        RETURN NULL;
    END;
$trg_person_insert_audit$ LANGUAGE plpgsql;
CREATE OR REPLACE TRIGGER trg_person_insert_audit
AFTER INSERT ON person FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address)
VALUES ((SELECT MAX(id)+1 FROM person),'Damir', 22, 'male', 'Irkutsk');