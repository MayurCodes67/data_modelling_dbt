{{ config(materialized = 'table') }}

SELECT week,
       COUNT(DISTINCT
	   CASE
	       WHEN prev_is_active = 1
		   THEN customer_id
	   END
	   ) AS active_customers_prev_week,
	   SUM(retained_flag) AS retained_customers
FROM {{ ref('int_weekly_customers_retain_flag') }}
GROUP BY week