
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "ecommerce_orders_analytics"."analytics"."int_weekly_order_revenue"

where not(weekly_revenue >= 0)


  
  
      
    ) dbt_internal_test