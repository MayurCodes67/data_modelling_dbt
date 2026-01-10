
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "ecommerce_orders_analytics"."analytics"."int_wow_order_revenue_percentage_growth"

where not(week_over_week_percentage_growth IS NULL OR (week_over_week_percentage_growth >= -1 AND week_over_week_percentage_growth <= 10))


  
  
      
    ) dbt_internal_test