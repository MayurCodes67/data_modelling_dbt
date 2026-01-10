
  
    

  create  table "ecommerce_orders_analytics"."analytics"."int_weekly_order_revenue_rolling_4w__dbt_tmp"
  
  
    as
  
  (
     
SELECT week_start, 
	   weekly_revenue, 
	   AVG(weekly_revenue) OVER(ORDER BY week_start ROWS BETWEEN 4 PRECEDING AND 1 PRECEDING) AS rolling_four_weeks_prev, 
	   STDDEV_POP(weekly_revenue) OVER(ORDER BY week_start ROWS BETWEEN 4 PRECEDING AND 1 PRECEDING) AS stddev_four_weeks_prev
FROM "ecommerce_orders_analytics"."analytics"."int_weekly_order_revenue"
  );
  