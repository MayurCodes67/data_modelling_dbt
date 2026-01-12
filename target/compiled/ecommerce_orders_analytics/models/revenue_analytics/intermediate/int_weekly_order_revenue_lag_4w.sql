

SELECT week_start,
	   weekly_revenue,
	   LAG(weekly_revenue, 4) OVER(ORDER BY week_start) AS prev_week4_order_revenue
FROM "ecommerce_orders_analytics"."analytics"."int_weekly_order_revenue"