
--SELECT * FROM dbo.[Orders] looking to see how many rows there are in OrderID to determine how to split up data

select * 
FROM dbo.[Orders] AS o 
INNER JOIN dbo.[Order Details] AS od
ON od.OrderID = o.OrderID
where od.OrderID between 10248 and 10414


select * 
FROM dbo.[Orders] AS o 
INNER JOIN dbo.[Order Details] AS od
ON od.OrderID = o.OrderID
where od.OrderID between 10414 and 10579


select * 
FROM dbo.[Orders] AS o 
INNER JOIN dbo.[Order Details] AS od
ON od.OrderID = o.OrderID
where od.OrderID between 10579 and 10745


select * 
FROM dbo.[Orders] AS o 
INNER JOIN dbo.[Order Details] AS od
ON od.OrderID = o.OrderID
where od.OrderID between 10745 and 10911


select * 
FROM dbo.[Orders] AS o 
INNER JOIN dbo.[Order Details] AS od
ON od.OrderID = o.OrderID
where od.OrderID between 10911 and 11077
