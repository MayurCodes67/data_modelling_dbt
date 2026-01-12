
  
    

  create  table "ecommerce_orders_analytics"."analytics"."fact_weekly_customers_retain_rate__dbt_tmp"
  
  
    as
  
  (
    

SELECT week,
       active_customers_prev_week,
	   retained_customers,
	   CASE
	       WHEN active_customers_prev_week IS NULL
		   OR active_customers_prev_week = 0 THEN NULL
		   ELSE retained_customers::float / active_customers_prev_week
	   END AS retain_rate
FROM "ecommerce_orders_analytics"."analytics"."int_weekly_customers_retained_customers"
  );
  