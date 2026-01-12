

SELECT week,
       COUNT(DISTINCT
	   CASE
	       WHEN prev_is_active = 1
		   THEN customer_id
	   END
	   ) AS active_customers_prev_week,
	   SUM(retained_flag) AS retained_customers
FROM "ecommerce_orders_analytics"."analytics"."int_weekly_customers_retain_flag"
GROUP BY week