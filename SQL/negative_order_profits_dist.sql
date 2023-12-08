SELECT sum(case when CAST(od.Order_Profit_Per_Order as decimal) < 0 then CAST(od.Order_Profit_Per_Order as decimal) else null end) Order_Profit, 
        sd.market
    FROM MainTable mt
        inner JOIN OrderData od
            on mt.Order_Id = od.Order_Id
        INNER JOIN ShippingData sd
            on sd.Order_Id = mt.Order_Id
        group by sd.Market