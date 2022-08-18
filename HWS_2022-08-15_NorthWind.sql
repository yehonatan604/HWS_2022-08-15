--Exercise 1
SELECT 'Exercise: ' AS ' ', 1 AS ' ';

SELECT ProductName, QuantityPerUnit, UnitsInStock 
	FROM Products;

--Exercise 2
SELECT 'Exercise: ' AS ' ', 2 AS ' ';

SELECT ProductID, ProductName 
	FROM Products;

--Exercise 3
SELECT 'Exercise: ' AS ' ', 3 AS ' ';

SELECT ProductID, ProductName 
	FROM Products
	WHERE Discontinued = 1;

--Exercise 4
SELECT 'Exercise: ' AS ' ', 4 AS ' ';

SELECT ProductName, UnitPrice
	FROM products
	WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products)
		  OR 
		  UnitPrice = (SELECT MIN(UnitPrice) FROM products)
	ORDER BY UnitPrice DESC;

--Exercise 5
SELECT 'Exercise: ' AS ' ', 5 AS ' ';

SELECT ProductName, UnitPrice
	FROM products
	WHERE UnitPrice < 20
	ORDER BY UnitPrice DESC;

--Exercise 6
SELECT 'Exercise: ' AS ' ', 6 AS ' ';

SELECT ProductName, UnitPrice
	FROM products
	WHERE UnitPrice BETWEEN 15 and 25
	ORDER BY UnitPrice ASC;

--Exercise 7
SELECT 'Exercise: ' AS ' ', 7 AS ' ';

SELECT ProductName, UnitPrice
	FROM products
	WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM products)
	ORDER BY UnitPrice ASC;

--Exercise 8
SELECT 'Exercise: ' AS ' ', 8 AS ' ';

SELECT TOP(10) ProductName, UnitPrice
	FROM products
	ORDER BY UnitPrice DESC;

--Exercise 9
SELECT 'Exercise: ' AS ' ', 9 AS ' ';

SELECT 'Current: ' AS ' ', Count(ProductID) AS Products
	FROM Products
	Where Discontinued = 0
UNION
	SELECT 'Discontinued: ', Count(ProductID) AS Products
	FROM Products
	Where Discontinued = 1;

--Exercise 10
SELECT 'Exercise: ' AS ' ', 10 AS ' ';

SELECT ProductName, UnitsOnOrder, UnitsInStock
	FROM Products
	WHERE UnitsInStock > UnitsOnOrder;
	