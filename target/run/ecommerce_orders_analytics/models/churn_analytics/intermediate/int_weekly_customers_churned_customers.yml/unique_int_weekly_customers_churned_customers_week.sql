
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    week as unique_field,
    count(*) as n_records

from "ecommerce_orders_analytics"."analytics"."int_weekly_customers_churned_customers"
where week is not null
group by week
having count(*) > 1



  
  
      
    ) dbt_internal_test