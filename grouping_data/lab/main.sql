DROP DATABASE luckyshrub_db;

CREATE DATABASE luckyshrub_db;

USE luckyshrub_db;

CREATE TABLE orders
(
    order_id INT,
    department VARCHAR(100),
    order_date DATE,
    order_quantity INT,
    order_total INT,
    PRIMARY KEY(order_id)
);

INSERT INTO orders
VALUES
    (1,'Lawn Care','2022-05-05',12,500),
    (2,'Decking','2022-05-22',150,1450),
    (3,'Compost and Stones','2022-05-27',20,780),
    (4,'Trees and Shrubs','2022-06-01',15,400),
    (5,'Garden Decor','2022-06-10',2,1250),
    (6,'Lawn Care','2022-06-10',12,500),
    (7,'Decking','2022-06-25',150,1450),
    (8,'Compost and Stones','2022-05-29',20,780),
    (9,'Trees and Shrubs','2022-06-10',15,400),
    (10,'Garden Decor','2022-06-10',2,1250),
    (11,'Lawn Care','2022-06-25',10,400), 
    (12,'Decking','2022-06-25',100,1400),
    (13,'Compost and Stones','2022-05-30',15,700),
    (14,'Trees and Shrubs','2022-06-15',10,300),
    (15,'Garden Decor','2022-06-11',2,1250),
    (16,'Lawn Care','2022-06-10',12,500),
    (17,'Decking','2022-06-25',150,1450),
    (18,'Trees and Shrubs','2022-06-10',15,400),
    (19,'Lawn Care','2022-06-10',12,500),
    (20,'Decking','2022-06-25',150,1450),
    (21,'Decking','2022-06-25',150,1450);

-- 1 to group all records that have the same order date
SELECT order_date
FROM orders
GROUP BY order_date;

-- 2 to retrieve the number of orders placed on the same day
SELECT
    order_date,
    COUNT(*) AS number_of_orders
FROM orders
GROUP BY
    order_date;

-- 3 to retrieve the total order quantities placed by each department
SELECT
    department,
    SUM(order_quantity) AS total_order_quantities
FROM orders
GROUP BY
    department;

-- 4 to retrieve the number of orders placed on the same day between the following dates: 1st June 2022 and 30th June 2022
SELECT
    order_date,
    COUNT(*) AS number_of_orders
FROM orders
WHERE order_date BETWEEN "2022-06-01" AND "2022-06-30"
GROUP BY
    order_date;
	