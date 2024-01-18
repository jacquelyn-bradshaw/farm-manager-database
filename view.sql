USE farmManager;

-- View to show which farmers drive which tractors
CREATE VIEW view_farmerTractorRelations
AS
SELECT farmers.firstName AS "Farmer's First Name",
farmers.lastName AS "Farmer's Last Name",
tractors.make AS "Tractor Make",
tractors.model AS "Tractor Model"
FROM farmerTractorRelation
INNER JOIN farmers
ON farmerTractorRelation.farmerID = farmers.farmerID
INNER JOIN tractors
ON farmerTractorRelation.tractorID = tractors.tractorID;

/* View to show which farmers work in each field and what
crop is in that field */
CREATE VIEW view_farmerFieldCropRelations
AS
SELECT farmers.firstName AS FarmersFirstName,
farmers.lastName AS FarmersLastName,
fields.name AS FieldName,
crops.type AS CropType
FROM farmerFieldRelation
INNER JOIN farmers
ON farmerFieldRelation.farmerID = farmers.farmerID
INNER JOIN fields
ON farmerFieldRelation.fieldID = fields.fieldID
INNER JOIN crops
ON fields.cropID = crops.cropID;

/* Query on farmerFieldCropRelations view to show only farmers
with the last name of "Banks" */
SELECT
FarmersFirstName,
FarmersLastName,
FieldName,
CropType
FROM view_farmerFieldCropRelations
HAVING FarmersLastName = "Banks";

/* Order the data in the view first by farmers first name then
by farmers last name */
SELECT
FarmersFirstName,
FarmersLastName,
FieldName,
CropType
FROM view_farmerFieldCropRelations
ORDER BY FarmersLastName, FarmersFirstName;
