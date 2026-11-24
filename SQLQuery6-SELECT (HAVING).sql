SELECT Color, COUNT(*) AS Jumlah 
FROM Production.Product 
GROUP BY Color 
HAVING COUNT(*) > 20; 

SELECT Color, COUNT(*) AS Jumlah 
FROM Production.Product 
WHERE ListPrice > 500  -- Filter baris dulu (Step 2) 
GROUP BY Color         -- Kelompokkan sisa baris (Step 3) 
HAVING COUNT(*) > 10;  -- Filter hasil kelompok (Step 4) 

SELECT ProductID, SUM(OrderQty) AS TotalQty 
FROM Sales.SalesOrderDetail 
GROUP BY ProductID 
HAVING SUM(OrderQty) > 1000; 

SELECT SpecialOfferID, AVG(OrderQty) AS RataRataBeli 
FROM Sales.SalesOrderDetail 
GROUP BY SpecialOfferID 
HAVING AVG(OrderQty) < 2; 

SELECT Color  
FROM Production.Product 
GROUP BY Color 
HAVING MAX(ListPrice) > 3000;

