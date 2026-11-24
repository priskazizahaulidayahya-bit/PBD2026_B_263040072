SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'Red';

SELECT Name, Color, ListPrice
FROM Production.Product
WHERE ListPrice < 1000;

SELECT Name, Color, ListPrice 
FROM Production.Product 
WHERE Color = 'Black' AND ListPrice > 500; 