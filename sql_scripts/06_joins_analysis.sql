/*=======================================================
Business Problem 1:
Identify customers contributing the highest revenue to the business.
=======================================================*/

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    SUM(o.Sales) AS TotalRevenue
FROM Sales.Orders o
INNER JOIN Sales.Customers c
    ON o.CustomerID = c.CustomerID
GROUP BY
    c.CustomerID,
    c.FirstName,
    c.LastName
ORDER BY TotalRevenue DESC;

/*=======================================================
Business Problem 2:

Determine which products and categories drive the most revenue.

SQL Concepts:
INNER JOIN, SUM(), GROUP BY
=======================================================*/
SELECT
    p.Product,
    p.Category,
    SUM(o.Quantity) AS UnitsSold,
    SUM(o.Sales) AS Revenue
FROM Sales.Orders o
INNER JOIN Sales.Products p
    ON o.ProductID = p.ProductID
GROUP BY
    p.Product,
    p.Category
ORDER BY Revenue DESC;

/*=======================================================
Business Problem 3 :
Evaluate employee performance based on sales revenue generated.
=======================================================*/
SELECT
    e.FirstName,
    e.LastName,
    COUNT(o.OrderID) AS OrdersHandled,
    SUM(o.Sales) AS RevenueGenerated
FROM Sales.Orders o
INNER JOIN Sales.Employees e
    ON o.SalesPersonID = e.EmployeeID
GROUP BY
    e.FirstName,
    e.LastName
ORDER BY RevenueGenerated DESC;

/*=======================================================
Business Problem 4:
Analyze customer distribution across countries.
=======================================================*/
SELECT
    Country,
    COUNT(*) AS TotalCustomers
FROM Sales.Customers
GROUP BY Country
ORDER BY TotalCustomers DESC;
