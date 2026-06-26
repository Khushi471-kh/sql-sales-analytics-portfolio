/*============================================================
Problem 1
Calculate employee age for workforce demographic analysis.
============================================================*/
Query:
SELECT
EmployeeID,
BirthDate,
FirstName,
DATEDIFF(YEAR, BirthDate, GETDATE()) AS CurrentAge
FROM Sales.Employees;
/*============================================================
Problem 2
Transform order creation timestamps into business-friendly date formats.
============================================================*/  
SELECT
OrderID,
CreationTime,
FORMAT(CreationTime,'dd') AS Day,
FORMAT(CreationTime,'MMMM') AS Month,
FORMAT(CreationTime,'yyyy') AS Year
FROM Sales.Orders;
    

/*=========================================================
Problem 3: Analyze Time Gap Between Consecutive Orders

Business Problem:
Measure the number of days between consecutive orders.

Objective:
Understand ordering patterns and customer purchase frequency.

SQL Concepts:
LAG(), DATEDIFF(), Window Functions
==========================================================*/

SELECT
    OrderID,
    OrderDate AS CurrentOrderDate,
    LAG(OrderDate) OVER(ORDER BY OrderDate) AS PreviousOrderDate,
    DATEDIFF(
        DAY,
        LAG(OrderDate) OVER(ORDER BY OrderDate),
        OrderDate
    ) AS DaysBetweenOrders
FROM Sales.Orders;

/*=========================================================
Problem 4: Calculate end of date(eod) Sales by Order 
=========================================================*/
select
orderid,
creationtime,
eomonth(creationtime) as eod
from sales.Orders
