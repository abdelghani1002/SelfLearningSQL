
-- EX_01
select * from sql_practices.shippers;

-- EX_02
select `categoryName`, `description` 
from sql_practices.categories;

-- EX_03
select `FirstName`, `LastName`, `HireDate` 
from sql_practices.employees
where `Title`="Sales Representative";

-- EX_04
select `FirstName`, `LastName`, `HireDate` 
from sql_practices.employees
where `Title` = "Sales Representative"
and `Country` = "USA";

-- EX_05
select `OrderID`, `OrderDate`
from sql_practices.orders
where `EmployeeID` = 5;

-- EX_06
select `SupplierID`, `ContactName`, `ContactTitle`
from sql_practices.suppliers
where `ContactTitle` != "Marketing Manager";

-- EX_07
select `ProductID`, `ProductName`
from sql_practices.products
where `ProductName` like "%queso%";

-- EX_08
select `OrderID`, `CustomerID`, `ShipCountry`
from sql_practices.orders
where `ShipCountry` = "France"
or `ShipCountry` = "Belgium";

-- EX_09
SELECT
    `OrderID`,
    `CustomerID`,
    `ShipCountry`
FROM
    sql_practices.Orders
WHERE
    `ShipCountry` IN ("Brazil", "Mexico", "Argentina", "Venezuela");

-- EX_10
select `FirstName`, `LastName`, `Title`, `BirthDate`
from sql_practices.`employees`
ORDER BY `BirthDate`;

-- EX_11
select `FirstName`, `LastName`, `Title`, DATE(`BirthDate`)
from sql_practices.`employees`
ORDER BY `BirthDate`;

-- EX_12
select `FirstName`, `LastName`, CONCAT(`FirstName`, " ", `LastName`)
from sql_practices.`employees`;

-- EX_13
select OrderID, ProductID, UnitPrice, Quantity, `Quantity` * `UnitPrice` as TotalPrice 
from orderdetails limit 3000;

-- EX_14
select count(*) as TotalCustomers from sql_practices.customers;

-- EX_15
select min(`OrderDate`) as FirstOrder from orders;

-- EX_16
select `Country`
from customers
GROUP BY `Country`;

-- EX_17
select `ContactTitle`, COUNT(`ContactTitle`) as 'COUNT'
from customers
GROUP BY `ContactTitle`;

-- EX_18
select `ProductID`, `ProductName`, `CompanyName`
from products
join suppliers
on products.`SupplierID` = suppliers.`SupplierID`
ORDER BY `ProductID`;

-- EX_19
select `OrderID`, DATE(`OrderDate`), `CompanyName` as 'Shipper'
from orders o
join shippers s
on o.`ShipVia` = s.`ShipperID`
where `OrderID` < 11300
ORDER BY `OrderID`;