CREATE DATABASE IF NOT EXISTS lucky_shrub;

USE lucky_shrub;

CREATE TABLE orders
(
    order_id INT NOT NULL PRIMARY KEY,
    client_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    cost DECIMAL(6,2)
);

INSERT INTO orders (order_id, client_id, product_id , quantity, cost)
VALUES
    (1, "Cl1", "P1", 10, 500),
    (2, "Cl2", "P2", 5, 100),
    (3, "Cl3", "P3", 20, 800),
    (4, "Cl4", "P4", 15, 150),
    (5, "Cl3", "P3", 10, 450),
    (6, "Cl2", "P2", 5, 800),
    (7, "Cl1", "P4", 22, 1200),
    (8, "Cl3", "P1", 15, 150),
    (9, "Cl1", "P1", 10, 500),
    (10, "Cl2", "P2", 5, 100);

-- 1 print all records of order where the cost is $250 or less
SELECT *
FROM orders
WHERE cost <= 250;

-- 2 print all records of orders where the cost is between $50 and $750
SELECT *
FROM orders
WHERE cost BETWEEN 50 AND 750;

-- 3 print all records of orders that have been placed by the client with the id of Cl3 and where the cost of the order is more than $100
SELECT *
FROM orders
WHERE
    client_id = 'Cl3'
    AND cost > 100;

-- 4 print all records of orders that have a product id of P1 or P2 and the order quantity is more than 2
SELECT *
FROM orders
WHERE
    product_id IN ('P1', 'P2')
    AND quantity > 2;
