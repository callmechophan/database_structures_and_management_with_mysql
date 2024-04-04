CREATE DATABASE mangata_gallo;

USE mangata_gallo;

-- task 1. create clients table
-- client_id: INT, NOT NULL and PRIMARY KEY
-- full_name: VARCHAR(100) NOT NULL
-- phone_number: INT, NOT NULL and UNIQUE
CREATE TABLE clients
(
    client_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone_number INT NOT NULL UNIQUE
);

-- task 2. create items table
-- item_id: INT, NOT NULL and PRIMARY KEY
-- item_name: VARCHAR(100) and NOT NULL
-- price: DECIMAL(5,2) and NOT NULL
CREATE TABLE items
(
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(5, 2) NOT NULL
);

-- task 3. create orders table
-- order_id: INT, NOT NULL and PRIMARY KEY
-- client_id: INT, NOT NULL and FOREIGN KEY
-- item_id: INT, NOT NULL and FOREIGN KEY
-- quantity: INT, NOT NULL and maximum allowed items in each order 3 only
-- cost DECIMAL(6,2) and NOT NULL
CREATE TABLE orders
(
    order_id INT PRIMARY KEY,
    quantity INT NOT NULL CHECK(quantity <= 3),
    cost DECIMAL(6, 2) NOT NULL,
    client_id INT NOT NULL,
    item_id INT NOT NULL,

    FOREIGN KEY (client_id) REFERENCES clients (client_id),
    FOREIGN KEY (item_id) REFERENCES items (item_id)

    -- ON DELETE CASCADE
    -- ON UPDATE CASCADE
);