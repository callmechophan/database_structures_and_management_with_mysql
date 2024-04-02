CREATE DATABASE little_lemon;

USE little_lemon;

CREATE TABLE customers
(
    customer_id INT NOT NULL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone_number INT NOT NULL UNIQUE
);

INSERT INTO customers(customer_id, full_name, phone_number)
VALUES
    (1, "Vanessa McCarthy", 0757536378),
    (2, "Marcos Romero", 0757536379),
    (3, "Hiroki Yamane", 0757536376),
    (4, "Anna Iversen", 0757536375),
    (5, "Diana Pinto", 0757536374);

CREATE TABLE bookings
(
    booking_id INT NOT NULL PRIMARY KEY,
    booking_date DATE NOT NULL,
    table_number INT NOT NULL,
    number_of_guests INT NOT NULL CHECK (number_of_guests <= 8),
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
); 

INSERT INTO bookings (booking_id, booking_date, table_number, number_of_guests, customer_id)
VALUES
    (10, '2021-11-11', 7, 5, 1),
    (11, '2021-11-10', 5, 2, 2),
    (12, '2021-11-10', 3, 2, 4);

-- 1 
-- a list of all customers who have made bookings
-- combine the full name and the phone number of each customer from the "customers" table with the related booking date and 'number of guests' from the "bookings" table
SELECT
    cus.full_name AS full_name,
    cus.phone_number AS phone_number,
    bk.booking_date AS booking_date,
    bk.number_of_guests AS number_of_guests
FROM
    customers AS cus
    INNER JOIN bookings AS bk ON cus.customer_id = bk.customer_id;

-- 2
-- to view information about all existing customers with bookings that have been made so far
SELECT
    cus.customer_id AS customer_id,
    bk.booking_id AS booking_id
FROM
    customers AS cus
    LEFT JOIN bookings AS bk ON cus.customer_id = bk.customer_id;
