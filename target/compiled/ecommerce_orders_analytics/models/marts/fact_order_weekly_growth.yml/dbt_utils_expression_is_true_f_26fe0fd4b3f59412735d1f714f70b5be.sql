



select
    1
from "ecommerce_orders_analytics"."analytics"."fact_order_weekly_growth"

where not(prev_week_revenue value IS NULL or value >= 0)

