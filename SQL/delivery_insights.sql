select count(case when Delivery_Status like 'Late delivery' then 1 else null end) Late_Delivery,
        count(case when Delivery_Status like '%canceled' then 1 else null end) Canceled_Delivery,
        count(case when Delivery_Status like '%on time' then 1 else null end) Ontime_Delivery,
        count(case when Delivery_Status like 'Advance%' then 1 else null end) Advance_Delivery,
        count(Order_Id) Total_Deliveries,
        Shipping_Mode
    from ShippingData
    group by Shipping_Mode