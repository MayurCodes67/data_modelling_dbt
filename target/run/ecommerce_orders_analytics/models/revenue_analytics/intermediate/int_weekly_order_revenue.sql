
  
    

  create  table "ecommerce_orders_analytics"."analytics"."int_weekly_order_revenue__dbt_tmp"
  
  
    as
  
  (
    

SELECT week_start,
	   SUM(cleaned_amount) AS weekly_revenue
FROM "ecommerce_orders_analytics"."analytics"."staging_orders"
GROUP BY week_start
  );
  