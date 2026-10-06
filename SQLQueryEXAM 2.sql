use data;

select * from [dbo].[Sales_Data$]

SELECT  State, COUNT(DISTINCT OrderID) AS TotalOrders from [dbo].[Sales_Data$] where orderstatus='Completed' Group by state;

SELECT State, SUM(Quantity) AS TotalQuantity from [dbo].[Sales_Data$] where  OrderStatus = 'Completed' GROUP BY State;

SELECT State, SUM(NetSales) AS TotalSales from  [dbo].[Sales_Data$] where OrderStatus = 'Completed'GROUP BY State;


select State , sum(Profit)as Total_Profit from [dbo].[Sales_Data$] where OrderStatus='Completed' group by State;

select State , sum(NetSales) / COUNT(distinct OrderID) from [dbo].[Sales_Data$] where OrderStatus='Completed' group by State;

select State , sum(NetSales) as total_Sales from [dbo].[Sales_Data$] where OrderStatus='Completed' group by State having sum(NetSales)>1000000;

select State , sum(NetSales) as total_Sales from [dbo].[Sales_Data$] where OrderStatus='Completed' group by State  order by total_Sales;

--Q)TOP CUSTOMER BY SALES

WITH CustomerSales as
(
    select
        CustomerID,
        CustomerName,
        SUM(NetSales) AS TotalSales
     from [dbo].[Sales_Data$]
     where OrderStatus = 'Completed'
     group by CustomerID, CustomerName
)
select TOP 5
    CustomerID,CustomerName,Totalsales
from CustomerSales
order by TotalSales desc;
