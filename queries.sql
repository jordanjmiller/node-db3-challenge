-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productname, c.CategoryName
  FROM product
  JOIN category as c
  ON product.CategoryId = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT id, s.CompanyName, o.OrderDate
 FROM 'Order' as o
 JOIN Shipper as s ON o.ShipVia = s.id
 WHERE o.OrderDate < '2012-08-09'
 ORDER BY o.OrderDate DESC;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT od.Quantity, p.ProductName 
FROM OrderDetail as od
JOIN Product AS p on od.ProductId = p.Id
WHERE od.OrderId = 10251
ORDER BY p.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.id as 'Order ID', c.CompanyName as 'Customer Company Name', e.LastName as 'Employee Last Name'
FROM 'Order' as o
JOIN Customer as c ON o.CustomerId = c.Id, Employee as e ON o.EmployeeId
GROUP BY o.Id;