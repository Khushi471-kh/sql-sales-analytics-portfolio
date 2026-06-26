/*============================================================
Problem 1
Create standardized customer profiles by combining customer name and country.
============================================================*/
SELECT
CONCAT(first_name,'-',country) AS CustomerProfile
FROM customers;

/*============================================================
Problem 2
Standardize customer names by converting them into uppercase.
============================================================*/
SELECT
UPPER(first_name)
FROM customers;

/*============================================================
Problem 3
Identify customer records containing unnecessary leading/trailing spaces.
============================================================*/
SELECT
first_name,
LEN(first_name),
LEN(TRIM(first_name))
FROM customers;