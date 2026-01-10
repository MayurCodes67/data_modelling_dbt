



select
    1
from "ecommerce_orders_analytics"."analytics"."int_weekly_order_revenue_lag_1w"

where not(weekly_revenue >= 0)

