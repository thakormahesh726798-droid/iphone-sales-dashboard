# Data Dictionary

| Column | Description |
|---|---|
| Order_ID | Unique order number |
| Customer_Name | Customer name (synthetic) |
| Country, City, Region | Customer location (12 countries) |
| iPhone_Model | iPhone 18 Pro, iPhone 18 Pro Max, iPhone Air, iPhone Duo |
| Storage, Color | 128GB / 256GB / 512GB; Burgundy, Black, Silver, Glacier, Cream |
| Quantity | Units in the order (1 to 5) |
| Price | Unit list price in USD for that country |
| Sale_Date | Order date (18 Sep 2026 to 28 Feb 2027); named Sales_Date in some versions |
| Payment_Method | Credit Card, Debit Card, Apple Pay, PayPal, Cash, UPI, Alipay, WeChat Pay, EMI/Financing |
| Customer_ID, Gender, Age | Customer attributes |
| Customer_Segment | Individual or Business |
| Customer_Type | New (first order) or Returning |
| Sales_Channel | Apple Online Store, Apple Retail Store, Authorized Reseller, Carrier, Online Marketplace |
| Discount_Pct | Discount applied to the order |
| Unit_Cost | Estimated unit cost in USD |
| Total_Sales | Quantity x Price x (1 - Discount_Pct) |
| Total_Cost | Quantity x Unit_Cost |
| Profit | Total_Sales - Total_Cost |
| Currency, Total_Sales_Local | Local currency code and sales in local currency (approximate fixed FX) |
| Delivery_Days | Days to deliver (0 for store pickup, blank if cancelled) |
| Order_Status | Delivered, Returned, Cancelled |
| Customer_Rating | 1 to 5 (blank if cancelled) |
