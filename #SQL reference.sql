-- Important SQL Commands:
-- SELECT - extracts data from a database
-- UPDATE - updates data in a database
-- DELETE - deletes data from a database
-- INSERT INTO - inserts new data into a database
-- CREATE DATABASE - creates a new database
-- ALTER DATABASE - modifies a database
-- CREATE TABLE - creates a new table
-- ALTER TABLE - modifies a table
-- DROP TABLE - deletes a table
-- CREATE INDEX - creates an index (search key)
-- DROP INDEX - deletes an index

CREATE TABLE country (
	id INTEGER,
    name STRING,
    age INTEGER
)

-- The following SQL statement selects all (and duplicate) values from the "Country" column in the "Customers" table:
SELECT Country
FROM Customers;

-- The following SQL statement selects only the DISTINCT values from the "Country" column in the "Customers" table:
SELECT DISTINCT Country
FROM Customers;

-- The following SQL statement lists the number of different (distinct) customer countries:
SELECT COUNT(DISTINCT Country)
FROM Customers;

-- The following SQL statement selects all the customers from the country "Mexico", in the "Customers" table:
SELECT *
FROM Customers
WHERE Country='Mexico';

-- The following SQL statement selects all fields from "Customers" where country is "Germany" AND city is "Berlin":
SELECT *
FROM Customers
WHERE Country='Germany' AND City='Berlin';

-- The following SQL statement selects all fields from "Customers" where city is "Berlin" OR "München":
SELECT *
FROM Customers
WHERE City='Berlin' OR City='München';

-- The following SQL statement selects all fields from "Customers" where country is NOT "Germany":
SELECT *
FROM Customers
WHERE NOT Country='Germany';

-- The following SQL statement selects all fields from "Customers" where country is "Germany" AND city must be "Berlin" OR "München" (use parenthesis to form complex expressions):
SELECT *
FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

-- The following SQL statement selects all fields from "Customers" where country is NOT "Germany" and NOT "USA":
SELECT *
FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';

-- The following SQL statement selects all customers from the "Customers" table, sorted by the "Country" column:
SELECT *
FROM Customers
ORDER BY Country;

-- The following SQL statement selects all customers from the "Customers" table, sorted by the "Country" and the "CustomerName" column:
SELECT *
FROM Customers
ORDER BY Country, CustomerName;

-- The following SQL statement selects all customers from the "Customers" table, sorted ascending by the "Country" and descending by the "CustomerName" column:
SELECT *
FROM Customers
ORDER BY Country ASC, CustomerName DESC;

-- The following SQL statement inserts a new record in the "Customers" table:
INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
    ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- It is also possible to only insert data in specific columns.
-- The following SQL statement will insert a new record, but only insert data in the "CustomerName", "City", and "Country" columns (CustomerID will be updated automatically):
INSERT INTO Customers
    (CustomerName, City, Country)
VALUES
    ('Cardinal', 'Stavanger', 'Norway');

-- The following SQL statement uses the IS NULL operator to list all persons that have no address:
SELECT LastName, FirstName, Address
FROM Persons
WHERE Address IS NULL;

-- The following SQL statement uses the IS NOT NULL operator to list all persons that do have an address:
SELECT LastName, FirstName, Address
FROM Persons
WHERE Address IS NOT NULL;

-- The following SQL statement updates the first customer (CustomerID = 1) with a new contact person and a new city.
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

-- The following SQL statement deletes the customer "Alfreds Futterkiste" from the "Customers" table:
DELETE FROM Customers
WHERE CustomerName='Alfreds Futterkiste';

-- The following SQL statement shows the equivalent example using the LIMIT clause:
-- Note: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses ROWNUM.
SELECT *
-- TOP 50 PERCENT
FROM Customers
WHERE Country='Germany';
-- LIMIT 3;

-- The following SQL statement finds the price of the cheapest product:
SELECT MIN(Price) AS SmallestPrice
FROM Products;

-- The following SQL statement finds the price of the most expensive product:
SELECT MAX(Price) AS LargestPrice
FROM Products;

-- The following SQL statement finds the number of products:
SELECT COUNT(ProductID)
FROM Products;

-- The following SQL statement finds the average price of all products:
SELECT AVG(Price)
FROM Products;

-- The following SQL statement finds the sum of the "Quantity" fields in the "OrderDetails" table:
SELECT SUM(Quantity)
FROM OrderDetails;

-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-- The following SQL statement selects all customers with a CustomerName starting with "a":
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a%';

-- The following SQL statement selects all customers with a CustomerName ending with "a":
SELECT *
FROM Customers
WHERE CustomerName LIKE '%a';

-- The following SQL statement selects all customers with a CustomerName that have "or" in any position:
SELECT *
FROM Customers
WHERE CustomerName LIKE '_r%';

-- The following SQL statement selects all customers with a CustomerName that starts with "a" and are at least 3 characters in length:
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a_%_%';

-- The following SQL statement selects all customers with a CustomerName that does NOT start with "a":
SELECT *
FROM Customers
WHERE CustomerName NOT LIKE 'a%';

-- The following SQL statement selects all customers with a City starting with any character, followed by "erlin":
SELECT *
FROM Customers
WHERE City LIKE '_erlin';

-- The following SQL statement selects all customers with a City starting with "L", followed by any character, followed by "n", followed by any character, followed by "on":
SELECT *
FROM Customers
WHERE City LIKE 'L_n_on';

-- The following SQL statement selects all customers with a City starting with "b", "s", or "p":
SELECT *
FROM Customers
WHERE City LIKE '[bsp]%';

-- The following SQL statement selects all customers with a City starting with "a", "b", or "c":
SELECT *
FROM Customers
WHERE City LIKE '[a-c]%';

-- The two following SQL statements select all customers with a City NOT starting with "b", "s", or "p":
SELECT *
FROM Customers
WHERE City NOT LIKE '[bsp]%';

-- The following SQL statement selects all customers that are located in "Germany", "France" and "UK":
SELECT *
FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

-- The following SQL statement selects all customers that are NOT located in "Germany", "France" or "UK":
SELECT *
FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

-- The following SQL statement selects all customers that are from the same countries as the suppliers:
SELECT *
FROM Customers
WHERE Country IN (SELECT Country
FROM Suppliers);

-- The following SQL statement selects all products with a price BETWEEN 10 and 20:
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;

-- The following SQL statement selects all products with a price BETWEEN 10 and 20. In addition; do not show products with a CategoryID of 1,2, or 3:
SELECT *
FROM Products
WHERE (Price BETWEEN 10 AND 20)
    AND NOT CategoryID IN (1,2,3);

-- The following SQL statement selects all products with a ProductName BETWEEN 'Carnarvon Tigers' and 'Mozzarella di Giovanni':
SELECT *
FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

-- The following SQL statement selects all orders with an OrderDate BETWEEN '04-July-1996' and '09-July-1996':
SELECT *
FROM Orders
-- WHERE OrderDate BETWEEN #07/04/1996# AND #07/09/1996#;
