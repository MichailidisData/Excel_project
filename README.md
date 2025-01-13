# Excel Project



## Project Overview

This data analysis project aims to provide insights into the bike sales of 6 countries (Canada, Australia, France, Germany, United Kingdom and United States) from 2011 to 2016.



## Data Source

"bike sales"
https://www.kaggle.com/datasets/sadiqshah/bike-sales-in-europe



## Tools

- Excel
- MySQL



## Data Cleaning / Preparation

1. Import csv data into excel.
2. Create a copy table of the existing table. This is the one we will work in and clean the data.  
3. Check for duplicates and remove them.
4. Check for NULL or BLANKS.
5. Remove columns that we do not need (Date, Day, Customer_Age, State, Sub_Category).
6. Delete previous and create new columns for profit, cost and revenue because they had mistakes (Cost = Unit_Price * Order_Quantity), Revenue = Unit_Price * Order_Quantity, Profit = Revenue - Cost).

			

## Data Analysis

- Avg Profit per Month
  
![image](https://github.com/user-attachments/assets/addd99c6-6d26-42b7-99f3-cf301776d106)


- Avg Profit per Year and Country

![image](https://github.com/user-attachments/assets/b8714cb6-d528-4817-8db6-25b4be7c5af9)


- Percentage of Product Quantity
 
![image](https://github.com/user-attachments/assets/9b48ca60-12b4-4d86-8198-aaa12a612690)


### Noticed that there was a huge drop on average profit between 2012 and 2013


SELECT Year, SUM(Order_Quantity) AS No_Orders, SUM(Profit) AS Profit, AVG(Profit) AS Avg_Profit
FROM sales
GROUP BY Year
ORDER BY Year;


SELECT Year, SUM(Order_Quantity) AS No_Orders, AVG(Unit_Cost), AVG(Unit_Price) 
FROM sales
GROUP BY Year
ORDER BY Year;loading bike_sales_info.sql…]()


[bike_sales_info1.xlsx](https://github.com/user-attachments/files/18397778/bike_sales_info1.xlsx)

[bike_sales_info2.xlsx](https://github.com/user-attachments/files/18397780/bike_sales_info2.xlsx)
