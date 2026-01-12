

SELECT customer_id,
       week,
	   is_active,
	   LAG(is_active) OVER(PARTITION BY customer_id ORDER BY week) AS prev_is_active
FROM "ecommerce_orders_analytics"."analytics"."int_weekly_active_customers"