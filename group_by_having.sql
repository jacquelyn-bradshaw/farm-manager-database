/* Query with group by and having to show which supplier names
more than two orders have been placed with*/
SELECT s.name AS SupplierName,
COUNT(o.supplierID) AS TotalOrdersToSupplier
FROM orders AS o
INNER JOIN suppliers AS s
ON o.supplierID = s.supplierID
GROUP BY o.supplierID
HAVING COUNT(o.supplierID) > 2;
