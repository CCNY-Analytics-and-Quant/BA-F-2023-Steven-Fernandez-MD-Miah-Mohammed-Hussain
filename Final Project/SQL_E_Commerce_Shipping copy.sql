select od.Order_Customer_Id, 
    od.Order_City,
    od.Order_State,
    od.Order_Country, 
    od.order_date_DateOrders, 
    od.Order_Item_Discount_Rate, 
    od.Order_Item_Product_Price, 
    od.Order_Region, 
    od.Order_Profit_Per_Order, 
    od.Order_Item_Quantity, 
    od.Order_Item_Profit_Ratio,
    od.Order_Item_Total, 
    od.Type,
    od.Sales,
    od.Order_Status,
    pd.Category_Name,
    pd.Product_Name,
    sd.Days_for_shipping_real,
    sd.Days_for_shipment_scheduled,
    sd.Delivery_Status,
    sd.Shipping_Mode,
    sd.Market
    from OrderData od
    inner JOIN ShippingData sd
        on  od.Order_Id = sd.Order_Id
    inner JOIN ProductData pd 
        on od.Order_Item_Cardprod_Id = pd.Product_Card_Id