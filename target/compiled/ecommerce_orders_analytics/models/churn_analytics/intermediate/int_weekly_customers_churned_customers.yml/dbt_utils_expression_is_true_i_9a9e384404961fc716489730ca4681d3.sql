



select
    1
from "ecommerce_orders_analytics"."analytics"."int_weekly_customers_churned_customers"

where not(churned_customers <= active_customers_prev_week)

