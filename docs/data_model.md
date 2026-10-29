# Data Model and Report Structure

## Tables
| Table | Purpose |
|---|---|
| iphone_sales_dataset | Fact table, one row per order (28 columns, see data_dictionary.md) |
| Date Table | Calendar from the first to the last sale month; columns Date, Month Year, YearMonth |
| Price_List | Base price and cost % per model and storage (reference only) |

## Relationship
`Date Table[Date]` (one) to `iphone_sales_dataset[Sales_Date]` (many), single direction, active. Mark Date Table as the date table and sort `Month Year` by `YearMonth`.

## Report pages
**Page 1: Overview**
- Slicers: Month (Date Table[Month Year]), iPhone Model, Region
- KPI cards: Total Profit, Total Sales, Profit Margin %, Avg Rating, Top Payment Method, Total Orders, Return Rate, Top Selling Product, Top Selling Country, Top Selling Gender
- Charts: Month Wise Sales, Customer Rating, Model Wise Sales Unit, Color Wise Unit Sales, Model Wise Profit

**Page 2: Geography & Customers**
- KPI cards: Avg Delivery Days, Unique Customers, Repeat Customers, dynamic Insight Country text
- Charts: Sales by Country (bar), Sales Map (filled map by Total Sales), Order Status
- Slicers: Month, iPhone Model, Region
- Navigation: page buttons and a Reset filters bookmark

## Data preparation notes
- Source: Excel workbook, sheet `iphone_sales_dataset`; column types set in Power Query (see powerbi/power_query.m).
- Sale_Date is renamed to Sales_Date in the last Power Query step.
- Total_Sales = Quantity x Price x (1 - Discount_Pct); Profit = Total_Sales - Total_Cost.
