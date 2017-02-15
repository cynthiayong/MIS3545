use AdventureWorks2012;

/*Find out all the customers from Sales.Customer table.*/
SELECT *
FROM Sales.customer;


/*Find out all the sales orders from Sales.SalesOrderHeader table.*/
SELECT *
FROM sales.salesorderheader;


/*Find out sales details about productID 843*/
SELECT *
FROM sales.salesorderdetail
/*WHERE productID BETWEEN 843 AND 845;*/
/*WHERE ProductID = 843 or ProductID = 844 or ProductID = 845;*/
WHERE ProductID in (843, 844, 845);


/*Sales info of all the products of which unit price is between 100 and 200*/
SELECT *
FROM sales.salesorderdetail
/*WHERE UnitPrice between 100 and 200;*/
WHERE UnitPrice <=200 and UnitPrice >=100;


/*All the store names*/
SELECT Name
FROM Sales.Store;


/*Find out store names that contain "Bike" */
SELECT Name
FROM Sales.Store
WHERE Name like '%bikes' COLLATE SQL_Latin1_General_CP1_CS_AS;


/*info of all the credit cards*/
SELECT *
FROM Sales.CreditCard;

/* A list of credit card types*/
SELECT DISTINCT CardType
From Sales.CreditCard;

