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
