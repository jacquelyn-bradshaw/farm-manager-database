USE farmManager;

-- Turn ON Event Scheduler
SET GLOBAL event_scheduler = ON;

/* Create an event that runs once a month to delete orders that
were placed more than one year ago */
CREATE EVENT delete_orders
ON SCHEDULE EVERY 1 MONTH
DO
DELETE FROM orders WHERE date < NOW() - INTERVAL 1 YEAR;
