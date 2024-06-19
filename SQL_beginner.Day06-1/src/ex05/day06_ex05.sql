COMMENT ON TABLE person_discounts IS 'person loyalty program discount';
COMMENT ON COLUMN person_discounts.id IS 'unique row identifier';
COMMENT ON COLUMN person_discounts.person_id IS 'person identifier as foreign key'
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'pizzeria identidier as foreign key'
COMMENT ON COLUMN person_discounts.discount IS 'calculated on orders number price discount'