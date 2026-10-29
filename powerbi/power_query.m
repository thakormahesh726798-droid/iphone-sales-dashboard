// Clean Power Query for the main table. Change the file path to where you saved the dataset.
// The shared dataset names the date column Sale_Date; the report uses Sales_Date, so the last step renames it.
let
    Source = Excel.Workbook(File.Contents("C:\Users\<your-name>\Downloads\Apple Project\iphone_worldwide_sales_dataset.xlsx"), null, true),
    Sheet = Source{[Item = "iphone_sales_dataset", Kind = "Sheet"]}[Data],
    Promoted = Table.PromoteHeaders(Sheet, [PromoteAllScalars = true]),
    Typed = Table.TransformColumnTypes(Promoted, {
        {"Order_ID", Int64.Type}, {"Customer_Name", type text}, {"Country", type text}, {"iPhone_Model", type text},
        {"Storage", type text}, {"Color", type text}, {"Quantity", Int64.Type}, {"Price", Currency.Type},
        {"Sale_Date", type date}, {"Payment_Method", type text}, {"Customer_ID", type text}, {"Gender", type text},
        {"Age", Int64.Type}, {"Customer_Segment", type text}, {"Customer_Type", type text}, {"City", type text},
        {"Region", type text}, {"Sales_Channel", type text}, {"Discount_Pct", Percentage.Type}, {"Unit_Cost", Currency.Type},
        {"Total_Sales", Currency.Type}, {"Total_Cost", Currency.Type}, {"Profit", Currency.Type}, {"Currency", type text},
        {"Total_Sales_Local", Currency.Type}, {"Delivery_Days", Int64.Type}, {"Order_Status", type text}, {"Customer_Rating", Int64.Type}
    }, "en-US"),
    Renamed = Table.RenameColumns(Typed, {{"Sale_Date", "Sales_Date"}})
in
    Renamed
