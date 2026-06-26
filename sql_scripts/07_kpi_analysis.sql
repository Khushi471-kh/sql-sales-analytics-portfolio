---Total Revenue
SELECT SUM(Sales) AS TotalRevenue
FROM Sales.Orders;

--Total Orders
SELECT COUNT(*) AS TotalOrders
FROM Sales.Orders;

--Average Order Value
SELECT
SUM(Sales)*1.0/COUNT(OrderID) AS AvgOrderValue
FROM Sales.Orders;

--Total Customers
SELECT COUNT(DISTINCT CustomerID)
AS UniqueCustomers
FROM Sales.Orders;