USE farmManager;

/* Query with subquery to find the fields that have the
crop wheat planted */
SELECT name
FROM field
WHERE cropID IN (
  SELECT cropID FROM crop
  WHERE type="wheat"
);
