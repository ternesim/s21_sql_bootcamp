WITH cte_rate AS
  (
    SELECT *, (
      SELECT rate_to_usd FROM currency AS c1
      WHERE c1.updated <= b.updated AND c1.id = b.currency_id
      ORDER BY c1.updated DESC
      LIMIT 1
    ) AS rate_before,
    (
      SELECT rate_to_usd FROM currency AS c2
      WHERE c2.updated > b.updated AND c2.id = b.currency_id
      ORDER BY c2.updated
      LIMIT 1
    ) AS rate_after
  FROM balance as b
), cte_cur_name AS (
  SELECT DISTINCT name, id FROM currency
)
SELECT 
  COALESCE(u.name, 'not defined') AS name, 
  COALESCE(u.lastname, 'not defined') AS lastname,
  c.name AS currency_name,
  RTRIM(RTRIM(ROUND(money * COALESCE(ct.rate_before, ct.rate_after), 4)::VARCHAR, '0'), '.')
     AS currency_in_usd
FROM cte_rate as ct 
LEFT JOIN "user" as u ON u.id = ct.user_id
JOIN cte_cur_name as c ON c.id = ct.currency_id
ORDER BY name DESC, lastname, currency_name;