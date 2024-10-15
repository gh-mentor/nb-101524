/*
This file contains a script of Transact SQL (T-SQL) command to interact with a database named 'Inventory'.
Requirements:
- SQL Server 2022 is installed and running
Details:
- Check if the database 'Inventory' exists:
-- If it exists, drop the database.
- Create a new database named 'Inventory'.
- Sets the default database to 'Inventory'.
- Create the 'categories' table. Use the following columns:
-- id:  integer, primary key
-- name: 50 characters, not null
-- description:  255 characters, nullable
- Create the 'products' table. Use the following columns:
-- id: integer, primary key
-- name: 50 characters, not null
-- price: decimal (10, 2), not null
-- category_id: int, foreign key references categories(id)
- Populate the 'categories' table with sample data.
- Populate the 'products' table with sample data.
*/




