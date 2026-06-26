/*======================================================
Business Problems
Problem 1
Combine customer and employee records into a unified directory.
==========================================================*/
Query:
SELECT FirstName, LastName
FROM Sales.Customers
UNION
SELECT FirstName, LastName
FROM Sales.Employees;

/*=====================================================
Problem 2
Identify employees who are not registered as customers.
==========================================================*/
Query:
SELECT FirstName, LastName
FROM Sales.Employees
EXCEPT
SELECT FirstName, LastName
FROM Sales.Customers;

/*=====================================================
Problem 3
Identify employees who are also customers.
==========================================================*/
Query:
SELECT FirstName, LastName
FROM Sales.Employees
INTERSECT
SELECT FirstName, LastName
FROM Sales.Customers;