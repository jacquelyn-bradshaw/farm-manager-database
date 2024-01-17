USE farmManager;

/* Query with subquery to find the fields that have the
crop wheat planted */
SELECT name AS "Field Name"
FROM fields
WHERE cropID IN (
  SELECT cropID FROM crops
  WHERE type="wheat"
);
