WITH cte AS (
  SELECT 
    address, 
    ROUND(MAX(p.age) - MIN(p.age)::NUMERIC/MAX(p.age), 2) as f,
    ROUND(AVG(p.age), 2) as a
  FROM person AS p
  GROUP BY address
)
SELECT 
  address, 
  TRIM(TRAILING '.0' FROM cte.f::VARCHAR) as formula,
  TRIM(TRAILING '.0' FROM cte.a::VARCHAR) as average,
  CASE
    WHEN cte.f > cte.a THEN 'true'
    ELSE 'false'
  END as comparison
FROM cte 
ORDER BY address;