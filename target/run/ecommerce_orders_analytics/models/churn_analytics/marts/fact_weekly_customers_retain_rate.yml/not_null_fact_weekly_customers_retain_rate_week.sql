
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select week
from "ecommerce_orders_analytics"."analytics"."fact_weekly_customers_retain_rate"
where week is null



  
  
      
    ) dbt_internal_test