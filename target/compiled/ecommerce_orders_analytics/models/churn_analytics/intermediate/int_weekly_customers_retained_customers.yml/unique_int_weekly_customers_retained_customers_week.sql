
    
    

select
    week as unique_field,
    count(*) as n_records

from "ecommerce_orders_analytics"."analytics"."int_weekly_customers_retained_customers"
where week is not null
group by week
having count(*) > 1


