select sum(rtn.Cust_Retention) Cust_reten_by_Dep, sd.Department_Name, pd.Category_Name
        from (select count(cd.customer_ID) Cust_Retention, cd.customer_id
            from CustomerData cd
            group by cd.Customer_Id) rtn
        inner join maintable mt
            on mt.Customer_Id = rtn.Customer_Id
        inner join StoreData sd
            on sd.Department_Id = mt.Department_Id
        inner join ProductData pd
            on pd.Category_Id = mt.Category_Id
    group by sd.Department_Name, pd.Category_Name  
    order by Cust_reten_by_Dep ASC