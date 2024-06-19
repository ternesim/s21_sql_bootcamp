CREATE VIEW v_generated_date AS
  SELECT d::DATE FROM generate_series('2022-01-01', '2022-01-31', interval '1 day') as d
  ORDER BY 1;