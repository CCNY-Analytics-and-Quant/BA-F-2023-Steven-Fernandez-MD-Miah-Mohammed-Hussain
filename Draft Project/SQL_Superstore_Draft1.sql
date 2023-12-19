-- Initial query used for the analysis

select pd2.Category_Name, 
        pd.Product_Name, 
        od.Order_City, 
        od.Order_Country, 
        od.order_date_DateOrders, 
        od.Order_Item_Discount_Rate, 
        od.Order_Item_Product_Price, 
        od.Order_Region, 
        od.Order_Profit_Per_Order, 
        od.Order_Item_Total, 
        od.Order_Item_Quantity, 
        od.Sales 
    from MainTable mt
    inner join orderdata od
        on mt.Order_Customer_Id = od.Order_Customer_Id
    inner join ProductData pd
        on mt.Product_Card_Id = pd.Product_Card_Id
    inner join productdata pd2
        on mt.Category_Id = pd2.Category_Id