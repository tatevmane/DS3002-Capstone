INSERT INTO [dbo].[fact_orders]
([OrderID],
[CustomerID],
[EmployeeID],
[OrderDate],
[RequiredDate],
[ShippedDate],
[ShipVia],
[Freight],
[ShipName],
[ShipAddress],
[ShipCity],
[ShipRegion],
[ShipPostalCode],
[ShipCountry])
SELECT c.OrderID,
    c.CustomerID,
    c.EmployeeID,
    c.OrderDate,
    c.RequiredDate,
    c.ShippedDate,
    c.ShipVia,
    c.Freight,
    c.ShipName,
    c.ShipAddress,
    c.ShipCity,
    c.ShipRegion,
    c.ShipPostalCode,
    c.ShipCountry
FROM [dbo].[Order Details] as od
INNER JOIN [dbo].[Orders] as o 
ON od.OrderID = o.OrderID
RIGHT OUTER JOIN [dbo].[CustomerCustomerDemo] as ccd
ON o.CustomerID = ccd.CustomerID

CREATE TABLE [dbo].[fact_orders] (
[OrderID] INT NULL DEFAULT NULL,
[CustomerID] VARCHAR(50) NULL DEFAULT NULL,
[EmployeeID] VARCHAR(50) NULL DEFAULT NULL,
[OrderDate] VARCHAR(50) NULL DEFAULT NULL,
[RequiredDate] TEXT NULL DEFAULT NULL,
[ShippedDate] VARCHAR(50) NULL DEFAULT NULL,
[ShipVia] VARCHAR(50) NULL DEFAULT NULL,
[Freight] VARCHAR(50) NULL DEFAULT NULL,
[ShipName] VARCHAR(50) NULL DEFAULT NULL,
[ShipAddress] VARCHAR(50) NULL DEFAULT NULL,
[ShipCity] VARCHAR(50) NULL DEFAULT NULL,
[ShipRegion] VARCHAR(50) NULL DEFAULT NULL,
[ShipPostalCode] VARCHAR(50) NULL DEFAULT NULL,
[ShipCountry] VARCHAR(50) NULL DEFAULT NULL)
;
