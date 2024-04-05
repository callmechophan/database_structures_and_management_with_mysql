DROP DATABASE IF EXISTS lucky_shrub;
CREATE DATABASE lucky_shrub;

USE lucky_shrub;

CREATE TABLE orders
(
    order_id INT NOT NULL PRIMARY KEY,
    client_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    cost DECIMAL(6, 2)
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

-- task 1. create the "orders_view" virtual table based on the "orders" table
-- the table must include column: order_id, quantity, cost
CREATE VIEW orders_view
AS
SELECT
    order_id,
    quantity,
    cost
FROM orders;

-- task 2. update table, change the cost to 200 where the order id equal 2
UPDATE orders_view
SET cost = 200
WHERE order_id = 2;

-- task 3. change the name of the "orders_view" virtual table to "clients_orders_view"
RENAME TABLE orders_view TO clients_orders_view;

-- task 4. delete the orders virtual table;
DROP VIEW clients_orders_view;