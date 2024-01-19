USE farmManager;

-- Query to show what crop is planted in each field
SELECT field.name AS field_name,
crop.type AS crop_type
FROM field
INNER JOIN crop
ON field.cropID = crop.cropID;

-- Query to show which farmers order from which suppliers
SELECT farmer.firstName,
farmer.lastName,
supplier.name
FROM farmerSupplierRelation
INNER JOIN farmer
ON farmerSupplierRelation.farmerID = farmer.farmerID
INNER JOIN supplier
ON farmerSupplierRelation.supplierID = supplier.supplierID;
