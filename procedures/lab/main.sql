CREATE DATABASE lucky_shrub;

USE lucky_shrub;

CREATE TABLE orders
(
    order_id INT,
    client_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    cost DECIMAL(6, 2)
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
    (8, "Cl1", "P1", 15, 150);

-- task 1. creates a stored procedure called "PROC_GET_ORDERS_DATA' which retrieves all data from the "orders" table
CREATE PROCEDURE PROC_GET_ORDERS_DATA()
SELECT *
FROM orders;

CALL PROC_GET_ORDERS_DATA();

-- task 2
-- creates a stored procedure called "PROC_GET_LIST_OF_ORDERS_IN_RANGE"
-- the procedure must contain two parameters is the two cost values "minimum_value" and "maximum_value"
CREATE PROCEDURE PROC_GET_LIST_OF_ORDERS_IN_RANGE(minimum_value DECIMAL, maximum_value DECIMAL)
SELECT *
FROM orders
WHERE cost BETWEEN minimum_value AND maximum_value;

CALL PROC_GET_LIST_OF_ORDERS_IN_RANGE(150, 600);