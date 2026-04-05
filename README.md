# Northwind SQL Operations Analysis

SQL queries written against the Northwind database, focused on 
operational metrics including revenue by category, employee 
workload, fulfillment speed, and customer inactivity.

## Queries
| # | Business Question | File |
|---|---|---|
| 1 | Which product category generated the most revenue? | `01_revenue_by_category.sql` |
| 2 | Which employee processed the most orders? | `02_top_employees_by_orders.sql` |
| 3 | Which shipper has the fastest average fulfillment time? | `03_shipper_fulfillment_speed.sql` |
| 4 | Which customers have been inactive for 6+ months? | `04_inactive_customers.sql` |

## Tools
- SQLite / SQLiteOnline.com
- Dataset: Northwind (classic sample business database)

## Key Findings
- **Beverages** is the top revenue category at $92M, nearly 40% ahead of 
  second-place Confections ($66M) — any stockout or supply issue in this 
  category has outsized business impact and should be prioritized.
- **Workload is evenly distributed** across all 9 employees (1,754–1,908 orders),
  suggesting no single point of failure in order processing — a sign of 
  healthy operational capacity.
- **Shipper choice is not a fulfillment lever** — United Package, Federal 
  Shipping, and Speedy Express all average 7.8–7.9 days. If leadership wants 
  to reduce fulfillment time, the bottleneck is elsewhere (warehouse, 
  processing, inventory) — not the carrier.
- **91 customers have been inactive since May 2023** — FISSA Fabrica Inter. 
  Salchichas S.A. (Spain) holds the oldest last order date. Two records show 
  NULL country values, indicating a data quality gap that would need cleaning 
  before any customer outreach campaign.

## Summary
Beverages drives disproportionate revenue and warrants priority inventory 
management. Fulfillment speed is consistent across all shippers, meaning 
carrier negotiations are unlikely to move the needle — operational improvements 
should focus upstream on order processing and warehouse efficiency instead.
