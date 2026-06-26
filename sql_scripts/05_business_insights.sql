
/*=========================================================
Problem 1: Monthly Order Volume Analysis

Business Problem:
Determine the number of orders placed each month.

Objective:
Identify seasonal demand patterns.

SQL Concepts:
DATENAME(), COUNT(), GROUP BY
=========================================================*/

SELECT
    DATENAME(MONTH, OrderDate) AS MonthName,
    COUNT(*) AS NoOfOrders
FROM Sales.Orders
GROUP BY DATENAME(MONTH, OrderDate);

/*========================================================= 
Problem 2: Yearly Order Trend Analysis

Business Problem:
Analyze order volume by year.

Objective:
Track long-term business growth.

SQL Concepts:
YEAR(), COUNT(), GROUP BY
=========================================================*/

SELECT
    YEAR(OrderDate) AS OrderYear,
    COUNT(*) AS NoOfOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear;

/*=========================================================
Problem 3: Calculate Average Shipping Duration
Business Problem:
Calculate average shipping duration by month.

Objective:
Measure logistics performance and identify delays.

SQL Concepts:
DATEDIFF(), AVG(), GROUP BY
=========================================================*/

SELECT
    MONTH(OrderDate) AS OrderMonth,
    AVG(DATEDIFF(DAY, OrderDate, ShipDate))
    AS AvgShippingDuration
FROM Sales.Orders
GROUP BY MONTH(OrderDate)
ORDER BY OrderMonth;