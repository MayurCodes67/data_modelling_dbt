

SELECT week,
       active_customers_prev_week,
	   churned_customers,
	   CASE
	       WHEN active_customers_prev_week IS NULL
		   OR active_customers_prev_week = 0 THEN NULL
		   ELSE churned_customers::float / active_customers_prev_week
	   END AS churn_rate
FROM "ecommerce_orders_analytics"."analytics"."int_weekly_customers_churned_customers"