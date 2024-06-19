SELECT d as missing_date FROM v_generated_dates gd
WHERE d NOT IN (SELECT visit_date FROM person_visits)
ORDER BY 1;