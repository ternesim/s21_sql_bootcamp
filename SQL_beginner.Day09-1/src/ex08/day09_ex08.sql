CREATE OR REPLACE FUNCTION fnc_fibonacci(IN pstop INTEGER DEFAULT 10)
RETURNS TABLE(num integer) AS $$
    WITH RECURSIVE cte(v1, v2) AS (
        VALUES (0, 1)
        UNION ALL
            SELECT
            v2, v1 + v2
        FROM cte
            WHERE v2 < pstop
    )
    SELECT v1 FROM cte;
$$ LANGUAGE sql;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();