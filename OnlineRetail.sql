create database OnlineRetail;
use  OnlineRetail;
select * from online_retail_table;
/*
'Revenue KPIs'
Total Revenue

select sum(Quantity * UnitPrice) As Total_Revenue from online_retail_table where Quantity > 0;

Top 10 Products by Revenue

select sum(Quantity * UnitPrice) As Total_Revenue, INvoiceNo  from online_retail_table where Quantity > 0 Group by InvoiceNo Order by Total_Revenue Desc Limit 10;


Revenue by Country

select sum(Quantity * UnitPrice) As Total_Revenue, Country  from online_retail_table where Quantity > 0 Group by Country Order by Total_Revenue DESC;

Average Order Value

select avg(Total_Revenue) as Average_Revenue 
from( select sum(Quantity * UnitPrice) As Total_Revenue, Country  from online_retail_table where Quantity > 0 Group by Country Order by Total_Revenue DESC) AS T;
'Customer KPIs'
Total Unique Customers

SELECT count(DISTINCT(CustomerID)) from online_retail_table;

Orders per Customer

select CustomerID, COUNT(DISTINCT(CustomerID)) AS Total_Orders from online_retail_table Group by CustomerID Order by Total_Orders;

Repeat Purchase Rate - WE DONT HAVE PURCHASE RATE BECAUSE ALL CUSTOMERS HAVE DONE ONLY ONE TIME ORDER
'Refund Analysis'
Total refund amount

select ABS(sum(Quantity * UnitPrice)) As Total_Refund  from online_retail_table where Quantity < 0 ;

Refund percentage of revenue 
SELECT 
    (ABS(RefundRevenue) / TotalRevenue) * 100 AS RefundPercentage
FROM (
    SELECT
        SUM(CASE WHEN Quantity > 0 THEN Quantity * UnitPrice ELSE 0 END) AS TotalRevenue,
        SUM(CASE WHEN Quantity < 0 THEN Quantity * UnitPrice ELSE 0 END) AS RefundRevenue
    FROM online_retail_table
) AS t;
*/

select count(*) from onlineretail.online_retail_table;

select * from onlineretail.online_retail_table
where quantity = 0;










 