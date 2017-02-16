use AdventureWorks2012;

/*Activity 1. Using the HumanResources.Employee table, provide a count of the number of employees by job title.  The query should consider only current employees (the CurrentFlag must equal 1).  */
SELECT JobTitle,
	COUNT(BusinessEntityID) as Number
FROM HumanResources.Employee
WHERE CurrentFlag = 1
GROUP BY Jobtitle
ORDER BY Number DESC;


/*Activity 2. Modify the query you created in Activity 1 so that the output shows only those job titles for which there is more than 1 employee.  */
SELECT JobTitle,
	COUNT(BusinessEntityID) as Number
FROM HumanResources.Employee
WHERE Currentflag = 1
GROUP BY Jobtitle
HAVING COUNT(BusinessEntityID) > 1
ORDER BY Number DESC


/*Activity 3. For each product, show its ProductID and Name (FROM the ProductionProduct table) and the location of its inventory (FROM the Product.Location table) and amount of inventory held at that location (FROM the Production.ProductInventory table).*/
SELECT p.productID, p.Name, i.locationID, l.name, i. quantity
FROM production.product as p
	JOIN production.productinventory as i
	on p.productID = i.productID
	JOIN production.location as l
ON l.locationID = i.locationID;


/*Activity 4. Find the product model IDs that have no product associated with them.  
To do this, first do an outer join between the Production.Product table and the Production.ProductModel table in such a way that the ID FROM the ProductModel table always shows, even if there is no product associate with it.  
Then, add a WHERE clause to specify that the ProductID IS NULL 
*/
Select pm.productmodelID,p.productID,p.name
FROM Production.ProductModel as pm
FULL OUTER JOIN production.product as p
ON pm.productmodelID = p.productmodelID
WHERE p.ProductID is NULL;


