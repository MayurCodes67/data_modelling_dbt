# ecommerce-orders-analytics

End-to-end DBT analytics project demonstrating layered modeling (raw, staging, intermediate and marts), data quality testing, and business metric validation.

---

## Project Overview

This project answers how weekly revenue is trending, how stable it is over time, and whether growth patterns are consistent or volatile.

This project models E-commerce order data using dbt, following a
staging → intermediate → marts architecture. The focus is on building
trustworthy metrics and enforcing correctness through comprehensive testing.

---

## Models

Total models: **17**

### Staging (1)
- `staging_orders`

### Intermediate (12)
- `int_weekly_order_revenue`
- `int_weekly_order_revenue_lag_1w`
- `int_weekly_order_revenue_lag_4w`
- `int_weekly_order_revenue_rolling_4w`
- `int_wow_order_revenue_growth_ratio`
- `int_wow_order_revenue_cv_4w`
- `int_weekly_active_customers`
- `int_weekly_active_customers_lag`
- `int_weekly_customers_churn_flag`
- `int_weekly_customers_churned_customers`
- `int_weekly_customers_retain_flag`
- `int_weekly_customers_retained_customers`

### Marts (4)
- `fact_order_weekly_growth`
- `fact_order_revenue_consistency`
- `fact_weekly_customers_churn_rate`
- `fact_weekly_customers_retain_rate`

---

## Tests

Total tests: **~42**

### Schema & Integrity Tests
- not_null
- unique
- accepted_values
- non negative numeric checks

### Mathematical Correctness Tests
- formula correctness tests
- zero denominator handling tests 
- expression_is_true <= tests

### Business Logic Tests
- flag correctness tests
- WOW(week_over_week) classification tests

---

## Modeling & Testing Philosophy

### Models
- **Staging models** Clean and standardize raw data.
- **Intermediate models** Derive reusable metrics and calculations.
- **Mart models** Showcase business ready facts and flags for analysis.

### Tests
- dbt testing's outcome is as follows: test pass: no rows are returned, test fail: bad rows are returned
- We intentionally try to fail the test,
  Why? because failing test returns bad rows which allows us to fix the errors.
- We sometimes write conditions intentionally which are anti-queries to return bad rows.

---

## Documentation
- dbt docs are generated to visualize lineage and model dependencies.
- Column-level tests and descriptions are visible in the docs UI.

---
