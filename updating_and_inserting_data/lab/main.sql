CREATE DATABASE lucky_shrub;

USE lucky_shrub;

CREATE TABLE orders
(
    order_id INT NOT NULL PRIMARY KEY,
    client_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    cost DECIMAL(6,2)
);

INSERT INTO orders (order_id, client_id, product_id, quantity, cost)
VALUES
    (1, "Cl1", "P1", 10, 500),
    (2, "Cl2", "P2", 5, 100),
    (3, "Cl3", "P3", 20, 800),
    (4, "Cl4", "P4", 15, 150),
    (5, "Cl3", "P3", 10, 450),
    (6, "Cl2", "P2", 5, 800),
    (7, "Cl1", "P4", 22, 1200),
    (8, "Cl1", "P1", 15, 150);

-- task 1. write a SQL REPLACE statement that inserts two new orders
REPLACE INTO orders (order_id, client_id, product_id, quantity, cost)
VALUES
    (9, "Cl1", "P1", 10, 5000),
    (10, "Cl2", "P2", 5, 100);

-- task 2. the cost of order_id 9 is $5000, the order must cost $500, writing a relevant REPLACE statement
REPLACE INTO orders (order_id, client_id, product_id, quantity, cost)
VALUES (9, "Cl1", "P1", 10, 500);

-- or
REPLACE INTO orders
SET order_id = 9, client_id = "Cl1", product_id = "P1", quantity = 10, cost = 500;