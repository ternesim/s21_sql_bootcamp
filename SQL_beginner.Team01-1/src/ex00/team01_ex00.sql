WITH cte_cur_last_rate AS (
  SELECT m.id, rate_to_usd as last_rate_to_usd, name as currency_name FROM (
    SELECT id, MAX(updated) 
    FROM currency
    GROUP BY id) AS m
    JOIN currency AS c ON c.updated = m.max AND c.id = m.id
), cte_sum AS (
  SELECT user_id, type, SUM(money) as volume, currency_id FROM balance AS b
  GROUP BY type, user_id, currency_id
)
SELECT 
  COALESCE(u.name, 'not defined') as name,
  COALESCE(u.lastname, 'not defined') as lastname,
  type, volume, 
  COALESCE(currency_name, 'not defined') as currency_name,
  COALESCE(last_rate_to_usd, 1) as last_rate_to_usd,
  RTRIM(RTRIM((ROUND(volume * COALESCE(last_rate_to_usd, 1), 4))::VARCHAR, '0'), '.') as total_volume_in_usd
FROM cte_sum
LEFT JOIN "user" as u ON u.id = cte_sum.user_id
LEFT JOIN cte_cur_last_rate as c ON cte_sum.currency_id = c.id
ORDER BY name DESC, lastname, type;