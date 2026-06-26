/*====================
Question:
Top-selling products
Revenue by category
Average price by category
==============================*/
QUERY:
SELECT
p.Category,
SUM(o.Sales) AS Revenue
FROM Sales.Orders o
JOIN Sales.Products p
ON o.ProductID=p.ProductID
GROUP BY p.Category
ORDER BY Revenue DESC;