

SELECT customer_id,
       week_start AS week,
	   1 AS is_active
FROM "ecommerce_orders_analytics"."analytics"."staging_orders"
GROUP BY customer_id,
         week