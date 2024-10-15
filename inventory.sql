/*
This file contains a script of Transact SQL (T-SQL) command to interact with a database named 'Inventory'.
Requirements:
- SQL Server 2022 is installed and running
Details:
- Check if the database 'Inventory' exists:
-- If it exists, drop the database.
- Create a new database named 'Inventory'.
- Set the default database to 'Inventory'.
- Create a 'categories' table. Use the following columns:
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

-- Check if the database 'Inventory' exists
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'Inventory')
BEGIN
    -- Drop the database 'Inventory'
    DROP DATABASE Inventory;
END

-- Create a new database named 'Inventory'
CREATE DATABASE Inventory;

-- Set the default database to 'Inventory'
USE Inventory;
GO

-- Create a 'categories' table
CREATE TABLE categories
(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(255)
);

-- Create the 'products' table
CREATE TABLE products
(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    -- add a created_at column to track the creation date of the product
    created_at DATETIME DEFAULT GETDATE(),
    -- add an updated_at column to track the last update date of the product
    updated_at DATETIME DEFAULT GETDATE()
);

-- Populate the 'categories' table with sample data
INSERT INTO categories (id, name, description) VALUES
(1, 'Electronics', 'Electronic devices and accessories'),
(2, 'Clothing', 'Clothing and apparel'),
(3, 'Home Goods', 'Household items and decor'),
(4, 'Books', 'Books and reading materials'),
(5, 'Toys', 'Children''s toys and games');


-- Populate the 'products' table with sample data
INSERT INTO products (id, name, price, category_id) VALUES
(1, 'Laptop', 999.99, 1),
(2, 'Smartphone', 599.99, 1),
(3, 'T-shirt', 19.99, 2),
(4, 'Jeans', 39.99, 2),
(5, 'Couch', 499.99, 3),
(6, 'Coffee Table', 149.99, 3),
(7, 'Novel', 9.99, 4),
(8, 'Cookbook', 14.99, 4),
(9, 'Action Figure', 12.99, 5),
(10, 'Board Game', 24.99, 5);



