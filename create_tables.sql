USE farmManager;

CREATE TABLE farmers (
  farmerID VARCHAR(10) NOT NULL PRIMARY KEY,
  firstName CHAR(20) NOT NULL,
  lastName CHAR(20) NOT NULL,
  street VARCHAR(50) NOT NULL,
  city CHAR(20), 
  postCode VARCHAR(10) NOT NULL,
  salary INT
);

CREATE TABLE tractors (
  tractorID VARCHAR(10) NOT NULL PRIMARY KEY,
  make CHAR(20) NOT NULL,
  model VARCHAR(20) NOT NULL,
  age INT,
  registrationPlate VARCHAR(10) NOT NULL,
  power VARCHAR(10)
);

CREATE TABLE farmerTractorRelation (
  farmerID VARCHAR(10) NOT NULL,
  tractorID VARCHAR(10) NOT NULL,
  PRIMARY KEY (farmerID, tractorID),
  FOREIGN KEY (farmerID) REFERENCES farmers(farmerID),
  FOREIGN KEY (tractorID) REFERENCES tractors(tractorID)
);

CREATE TABLE fields (
  fieldID VARCHAR(10) NOT NULL PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  size INT,
  location VARCHAR(25),
  cropID VARCHAR(10),
  FOREIGN KEY (cropID) REFERENCES crops(cropID)
);

CREATE TABLE farmerFieldRelation (
  farmerID VARCHAR(10) NOT NULL,
  fieldID VARCHAR(10) NOT NULL,
  PRIMARY KEY (farmerID, fieldID),
  FOREIGN KEY (farmerID) REFERENCES farmers(farmerID),
  FOREIGN KEY (fieldID) REFERENCES fields(fieldID)
);

CREATE TABLE crops (
  cropID VARCHAR(10) NOT NULL PRIMARY KEY,
  type CHAR(20) NOT NULL,
  variety CHAR(20),
  yield VARCHAR(20),
  days VARCHAR(10)
);

CREATE TABLE suppliers (
  supplierID VARCHAR(10) NOT NULL PRIMARY KEY,
  name CHAR(30) NOT NULL,
  street VARCHAR(50) NOT NULL,
  city CHAR(20),
  postCode VARCHAR(10) NOT NULL
);

CREATE TABLE products (
  productID VARCHAR(10) NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  price FLOAT(2),
  weight FLOAT(2),
  supplierID VARCHAR(10) NOT NULL,
  FOREIGN KEY (supplierID) REFERENCES suppliers(supplierID)
);

CREATE TABLE orders (
  orderID VARCHAR(10) NOT NULL PRIMARY KEY,
  farmerID VARCHAR(10) NOT NULL,
  supplierID VARCHAR(10) NOT NULL,
  productID VARCHAR(10) NOT NULL,
  quantity INT,
  date DATE,
  FOREIGN KEY (farmerID) REFERENCES farmers(farmerID),
  FOREIGN KEY (supplierID) REFERENCES suppliers(supplierID),
  FOREIGN KEY (productID) REFERENCES products(productID)
);
