USE farmManager;

-- View to show which farmers drive which tractors
CREATE VIEW view_farmerTractorRelations
AS
SELECT farmer.firstName,
farmer.lastName,
tractor.make,
tractor.model
FROM farmerTractorRelation
INNER JOIN farmer
ON farmerTractorRelation.farmerID = farmer.farmerID
INNER JOIN tractor
ON farmerTractorRelation.tractorID = tractor.tractorID;
