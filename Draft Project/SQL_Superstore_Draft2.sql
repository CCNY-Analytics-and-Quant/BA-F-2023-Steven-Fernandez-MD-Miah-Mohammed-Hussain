-- Final query used for the analysis of the draft. all analysis thats seen on python file comes from this data that was queried

select cd.Customer_Id, 
        pd2.Category_Name, 
        pd.Product_Name, 
        od.Order_City, 
        od.Order_State, 
        od.Order_Country, 
        od.order_date_DateOrders, 
        od.Order_Item_Discount_Rate, 
        od.Order_Item_Product_Price, 
        od.Order_Region, 
        sd.Market, 
        od.Order_Profit_Per_Order, 
        od.Order_Item_Total, 
        od.Order_Item_Quantity, 
        od.Order_Item_Profit_Ratio, 
        od.Type, cd.Customer_Id, 
        od.Sales, cd.Customer_Segment, 
        sd.Shipping_Mode, 
        sd.Delivery_Status, 
        od.Order_Status, 
        sd.Days_for_shipment_scheduled, 
        sd.Days_for_shipping_real
    from MainTable mt
    inner join orderdata od
        on mt.Order_Customer_Id = od.Order_Customer_Id
    inner join ProductData pd
        on mt.Product_Card_Id = pd.Product_Card_Id
    inner join productdata pd2
        on mt.Category_Id = pd2.Category_Id
    inner join CustomerData cd 
        on mt.Customer_Id = cd.Customer_Id
    inner join ShippingData sd 
        on od.Order_Id = sd.Order_Id