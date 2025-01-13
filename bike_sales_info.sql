SELECT * FROM sales;


SELECT Year, SUM(Order_Quantity) AS No_Orders, SUM(Profit) AS Profit, AVG(Profit) AS Avg_Profit
FROM sales
GROUP BY Year
ORDER BY Year;


SELECT Year, SUM(Order_Quantity) AS No_Orders, AVG(Unit_Cost), AVG(Unit_Price) 
FROM sales
GROUP BY Year
ORDER BY Year;