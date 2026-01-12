
  
    

  create  table "ecommerce_orders_analytics"."analytics"."int_wow_order_revenue_growth_ratio__dbt_tmp"
  
  
    as
  
  (
    

SELECT week_start,
	   weekly_revenue,
	   prev_week_revenue,
	   CASE
           WHEN prev_week_revenue IS NULL
           OR prev_week_revenue = 0 THEN NULL 
           ELSE (weekly_revenue - prev_week_revenue) / prev_week_revenue
	   END AS week_over_week_growth_ratio
FROM "ecommerce_orders_analytics"."analytics"."int_weekly_order_revenue_lag_1w"
  );
  