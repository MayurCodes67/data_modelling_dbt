



select
    1
from "ecommerce_orders_analytics"."analytics"."fact_order_weekly_growth"

where not(week_over_week_percentage_growth IS NULL OR (
  >= -1
  AND <= 10
))

