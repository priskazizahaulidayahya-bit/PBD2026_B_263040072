SELECT DISTINCT JobTitle 
FROM HumanResources.Employee; 

SELECT Name, ListPrice 
FROM Production.Product 
ORDER BY ListPrice DESC; 

SELECT TOP 5 Name, ListPrice 
FROM Production.Product 
ORDER BY ListPrice DESC; 

SELECT Name, ListPrice 
FROM Production.Product 
ORDER BY ListPrice DESC 
OFFSET 10 ROWS 
FETCH NEXT 5 ROWS ONLY; 

SELECT TOP 3 Color, SUM(ListPrice) AS TotalNilaiStok 
FROM Production.Product 
WHERE ListPrice > 0          
GROUP BY Color               -- Step 2: Filter sampah -- Step 3: Kelompokkan 
ORDER BY TotalNilaiStok DESC;-- Step 6: Urutkan 