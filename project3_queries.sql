USE decodelabs;
SHOW TABLES;
SELECT * FROM orders;
SELECT Product, Quantity, TotalPrice
FROM orders;
SELECT *
FROM orders
WHERE OrderStatus = 'Cancelled';
SELECT Product, TotalPrice
FROM orders
ORDER BY TotalPrice DESC;
SELECT COUNT(*) AS Total_Orders
FROM orders;
SELECT Product,
COUNT(*) AS Orders
FROM orders
GROUP BY Product
ORDER BY Orders DESC;
SELECT Product,
SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Product
ORDER BY Revenue DESC;
SELECT Product,
       ROUND(SUM(TotalPrice), 2) AS Revenue
FROM orders
GROUP BY Product
ORDER BY Revenue DESC;
SELECT AVG(Quantity) AS Average_Quantity
FROM orders;
SELECT PaymentMethod,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;
SELECT ReferralSource,
COUNT(*) AS Orders
FROM orders
GROUP BY ReferralSource
ORDER BY Orders DESC;
SELECT *
FROM orders
ORDER BY TotalPrice DESC
LIMIT 1;
SELECT OrderStatus,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY OrderStatus;
SELECT Product,
ROUND(AVG(TotalPrice),2) AS Average_Revenue
FROM orders
GROUP BY Product
ORDER BY Average_Revenue DESC;
