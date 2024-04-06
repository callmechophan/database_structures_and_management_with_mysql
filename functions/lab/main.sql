CREATE DATABASE jewelrystore_db;

USE jewelrystore_db;

CREATE TABLE items
(
    item_id INT,
    name VARCHAR(150),
    cost INT,
    
    PRIMARY KEY(item_id)
);

INSERT INTO items
VALUES
    (1,'Engagement ring',2500),
    (2,'Silver brooch',400),
    (3,'Earrings',350),
    (4,'Luxury watch',1250),
    (5,'Golden bracelet',800),
    (6,'Gemstone',1500);

CREATE TABLE mg_orders
(
    order_id INT,
    item_id INT,
    quantity INT,
    cost INT,
    order_date DATE,
    delivery_date DATE,
    order_status VARCHAR(50),
    
    PRIMARY KEY(order_id)
);

INSERT INTO mg_orders
VALUES
    (1,1,50,122000,'2022-04-05','2022-05-25', 'Delivered'),
    (2,2,75,28000,'2022-03-08',NULL, 'In progress'),
    (3,3,80,25000,'2022-05-19','2022-06-08', 'Delivered'),
    (4,4,45,100000,'2022-01-10',NULL, 'In progress'),
    (5,5,70,56000,'2022-05-19',NULL, 'In progress'),
    (6,6,60,90000,'2022-06-10','2022-06-18', 'Delivered');

-- task 1. list items, quantities and order status
SELECT
    CONCAT_WS('-', LCASE(items.name), mg_orders.quantity, UCASE(mg_orders.order_status))
FROM
    items
    INNER JOIN mg_orders ON items.item_id = mg_orders.item_id;

-- task 2. find the name of the weekday
SELECT
    DATE_FORMAT(delivery_date, "%W")
FROM mg_orders;

-- task 3
-- calculates the cost of handling each order
-- this should be 5% of the total order cost
-- use an appropriate math function to round that value to 2 decimal places
SELECT
    order_id,
    ROUND(cost * 0.05, 2) AS handling_cost
FROM mg_orders;

-- task 4. use an appropriate comparison function to filter out the records that do not have a NULL value in the delivery date column
SELECT
    DATE_FORMAT(delivery_date, "%W")
FROM mg_orders
WHERE NOT ISNULL(delivery_date); -- or !ISNULL(delivery_date)