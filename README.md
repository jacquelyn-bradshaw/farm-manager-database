# farm-manager-database

A database to enable farmers to manage their farm, the tractors that they own, what crops are planted in which fields and which suppliers stock each product they need.
SQL files and commands to create a database and tables and insert data.

## EER diagram

Diagram showing the table relations in the farm manager database

## Create the database

Run the create database sql file.

```
mysql < create_database.sql
```

## Create the tables

Run the create tables sql file.

```
mysql < create_tables.sql
```

## Insert the data

Run the insert data sql file.

```
mysql < insert_data.sql
```

## Create a view to show which farmers drive which tractors

Run the view sql file.

```
mysql < view.sql
```

## Query with subquery to find the fields that have the crop wheat planted

Run the subquery sql file.

```
mysql < subquery.sql
```

## User defined function to calculate how many farmers each field needs

Run the user defined function sql file.

```
mysql < user_defined_function.sql
```

## An event that runs once a month to delete orders that were placed more than one year ago

Run the event sql file.

```
mysql < event.sql
```

## A stored procedure that creates an orders table with the farmers first name, supplier name, product name, quantity and date for each order

Run the stored procedure sql file.

```
mysql < stored_procedure.sql
```

## A trigger before insert on the farmers table to correctly format strings

Run the trigger sql file.

```
mysql < trigger.sql
```

## Query with group by and having to show which supplier names more than two orders have been placed with

Run the group by having sql file.

```
mysql < group_by_having.sql
```

## MySQL Guidance

Details on how to install mysql and authenticate (if needed).

### Install MySQL

MySQL can be installed via brew

```
brew install mysql
brew services start mysql
```

### Username / Password authentication

If mysql has authenticaton enabled, you can include your password in the command line.

```
mysql -p < create_database.sql
```
