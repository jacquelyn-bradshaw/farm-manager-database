# farm-manager-database

A database to enable farmers to manage their farm, the tractors that they own, what crops are planted in which fields and which suppliers stock each product they need.
SQL files and commands to create a database and tables and insert data.

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
