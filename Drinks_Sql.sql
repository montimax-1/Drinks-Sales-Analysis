create database drinkssales_db

use drinkssales_db

--import file

Select * from Drink_sales

--Total revenue
Select sum(Total_Sale) as Total_Revenue from Drink_sales


--Total sales by brand (Top 5)

Select Top 5 Brand, sum(Total_Sale) as Total_Revenue
from Drink_sales  group by Brand
Order by Total_Revenue desc;

--Top 5 flavors by revenue

Select Top 5 Flavor, sum(Total_Sale) as Total_Revenue
from Drink_sales  group by Flavor
Order by Total_Revenue desc;



--Month-wise revenue trend
Select format(Sale_Date, 'yyyy-MM') as Sale_Month,sum(Total_Sale) AS Monthly_Revenue
from Drink_Sales
group by format(Sale_Date, 'yyyy-MM')
order by Sale_Month;


--Store with highest total sales

Select top 1 Store_ID, sum(Total_Sale) as Total_Revenue from Drink_Sales
group by Store_ID
order by Total_Revenue desc;

--Average sales
Select avg(Total_sale) from Drink_Sales

--State with maximum revenue (Top 33)
Select top 3 Store_State, sum(Total_Sale) as Total_Revenue
from Drink_Sales
group by Store_State
order by Total_Revenue desc;



--City with maximum revenue (Top 3)
Select top 3 Store_City, sum(Total_Sale) as Total_Revenue
from Drink_Sales
group by Store_City
order by Total_Revenue desc;

--City with highest quantity sold

Select top 10 Store_City, sum(Quantity_Sold) as Total_Quantity
from Drink_Sales
group by Store_City
order by Total_Quantity desc;

--Average unit price by brand
Select Brand, avg(Unit_Price) as Avg_Unit_Price
from Drink_Sales
group by Brand
order by Avg_Unit_Price desc;

--Top 10 stores by revenue
Select top 10 Store_ID, sum(Total_Sale) as Total_Revenue
from Drink_Sales
group by Store_ID
order by Total_Revenue desc


--Number of unique flavors sold per brand
Select Brand, count(distinct Flavor) as Unique_Flavors
from Drink_Sales
group by Brand;


--Yearly revenue

select year(Sale_Date) as Sale_Year,
       sum(Total_Sale) as Yearly_Revenue
from Drink_Sales
group by year(Sale_Date)
order by Sale_Year;


SELECT Unit_Price, Quantity_Sold
FROM Drink_Sales;




