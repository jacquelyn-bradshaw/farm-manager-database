USE farmManager;

/* A stored function that accepts field size as a parameter and
then assesses whether 1 or 2 farmers are needed.
*/
DELIMITER //
CREATE FUNCTION number_of_farmers_needed(size INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE number_of_farmers INT;
    IF size <= 10 THEN SET number_of_farmers = 1;
    ELSEIF size > 10 THEN SET number_of_farmers = 2;
    END IF;
    RETURN number_of_farmers;
    END //
DELIMITER ;

/* Use the number_of_farmers_needed function on the field
table to show how many farmers each field needs */
SELECT name AS "Field name",
size AS "Field size",
number_of_farmers_needed(size) AS "Number of farmers needed"
FROM fields;
