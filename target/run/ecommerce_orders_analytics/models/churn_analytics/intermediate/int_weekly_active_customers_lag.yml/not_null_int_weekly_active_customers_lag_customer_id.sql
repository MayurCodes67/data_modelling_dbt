
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select customer_id
from "ecommerce_orders_analytics"."analytics"."int_weekly_active_customers_lag"
where customer_id is null



  
  
      
    ) dbt_internal_test