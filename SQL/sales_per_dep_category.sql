select pd.Category_Name,
    sd.department_name, 
    Round(sum(pd.Product_Price),2) as Sum_Price
    FROM MainTable mt
        Inner Join StoreData sd 
            on mt.Department_Id = sd.Department_Id
        inner join ProductData pd 
            on pd.Category_Id = mt.Category_Id
    group by Category_Name, Department_Name 
    order by pd.Category_Name ASC