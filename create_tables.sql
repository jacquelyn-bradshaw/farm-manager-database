USE farmManager;

CREATE TABLE farmer (
  farmerID VARCHAR(10) NOT NULL PRIMARY KEY,
  firstName CHAR(20) NOT NULL,
  lastName CHAR(20) NOT NULL,
  street VARCHAR(50) NOT NULL,
  city CHAR(20), 
  postCode VARCHAR(10) NOT NULL,
  salary INT
);

CREATE TABLE tractor (
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
  FOREIGN KEY (farmerID) REFERENCES farmer(farmerID),
  FOREIGN KEY (tractorID) REFERENCES tractor(tractorID)
);

CREATE TABLE field (
  fieldID VARCHAR(10) NOT NULL PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  size INT,
  location VARCHAR(20),
  cropID VARCHAR(10),
  FOREIGN KEY (cropID) REFERENCES crop(cropID)
);

CREATE TABLE farmerFieldRelation (
  farmerID VARCHAR(10) NOT NULL,
  fieldID VARCHAR(10) NOT NULL,
  PRIMARY KEY (farmerID, fieldID),
  FOREIGN KEY (farmerID) REFERENCES farmer(farmerID),
  FOREIGN KEY (fieldID) REFERENCES field(fieldID)
);

CREATE TABLE crop (
  cropID VARCHAR(10) NOT NULL PRIMARY KEY,
  type CHAR(20) NOT NULL,
  variety CHAR(20),
  yield VARCHAR(20),
  days VARCHAR(10)
);

CREATE TABLE supplier (
  supplierID VARCHAR(10) NOT NULL PRIMARY KEY,
  firstName CHAR(20) NOT NULL,
  lastName CHAR(20) NOT NULL,
  street VARCHAR(50) NOT NULL,
  city CHAR(20),
  postCode VARCHAR(10) NOT NULL
)

CREATE TABLE farmerSupplierRelation (
  farmerID VARCHAR(10) NOT NULL,
  supplierID VARCHAR(10) NOT NULL,
  PRIMARY KEY (farmerID, supplierID),
  FOREIGN KEY (farmerID) REFERENCES farmer(farmerID),
  FOREIGN KEY (supplierID) REFERENCES supplier(supplierID)
)

CREATE TABLE product (
  productID VARCHAR(10) NOT NULL,
  name VARCHAR(50) NOT NULL,
  price FLOAT(2),
  weight FLOAT(2),
  supplierID VARCHAR(10) NOT NULL,
  FOREIGN KEY (supplierID) REFERENCES supplier(supplierID)
)
