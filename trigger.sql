USE farmManager;

/* Using the farmers table I am creating a trigger that
will activate before the INSERT statement on inserted values to
ensure that the first character is upper case and the rest of the
characters are lower case for first name, last name and city.
For postcode it will ensure that all characters are upper case*/
DELIMITER //
CREATE TRIGGER farmers_before_insert
BEFORE INSERT
ON farmers
FOR EACH ROW
BEGIN
	SET NEW.firstName = CONCAT(UPPER(SUBSTRING(NEW.firstName,1,1)), 
							LOWER(SUBSTRING(NEW.firstName FROM 2)));
  SET NEW.lastName = CONCAT(UPPER(SUBSTRING(NEW.lastName,1,1)), 
							LOWER(SUBSTRING(NEW.lastName FROM 2)));
  SET NEW.city = CONCAT(UPPER(SUBSTRING(NEW.city,1,1)), 
							LOWER(SUBSTRING(NEW.city FROM 2)));
  SET NEW.postCode = UPPER(NEW.postCode);
    END //
DELIMITER ;

-- Insert data into the farmer table
INSERT INTO
farmers (farmerID, firstName, lastName, street, city, postCode, salary)
VALUES
("F9", "aRLo", "grant", "7 Church Street", "buxton", "sk17 6hd", 7000),
("F10", "georgia", "grANT", "7 Church Sreeet", "BUXTON", "Sk17 6hD", 7000);

-- Check data has been inserted correctly using the trigger
SELECT * FROM farmers;
