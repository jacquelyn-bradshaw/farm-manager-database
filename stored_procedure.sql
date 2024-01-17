/* A stored procedure that creates an orders table with the
farmers first name, supplier name, product name, quantity and
date for each order*/

DELIMITER //

CREATE PROCEDURE findOrders()
BEGIN
  SELECT farmers.firstName AS "Farmer's First Name",
  suppliers.name AS "Suppliers Name",
  products.name AS "Product Name",
  orders.Quantity,
  orders.Date
  FROM orders
  INNER JOIN farmers
  ON orders.farmerID = farmers.farmerID
  INNER JOIN suppliers
  ON orders.supplierID = suppliers.supplierID
  INNER JOIN products
  ON orders.productID = products.productID;
  END //

DELIMITER ;

/* Use the stored procedure to find all orders*/

CALL findOrders();
