CREATE DATABASE IF NOT EXISTS little_lemon;

USE little_lemon;

CREATE TABLE customers
(
    customer_id INT NOT NULL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone_number INT NOT NULL UNIQUE
);

INSERT INTO customers(customer_id, full_name, phone_number) VALUES 
(1, "Vanessa McCarthy", 0757536378), 
(2, "Marcos Romero", 0757536379), 
(3, "Hiroki Yamane", 0757536376), 
(4, "Anna Iversen", 0757536375), 
(5, "Diana Pinto", 0757536374),     
(6, "Altay Ayhan", 0757636378),      
(7, "Jane Murphy", 0753536379),      
(8, "Laurina Delgado", 0754536376),      
(9, "Mike Edwards", 0757236375),     
(10, "Karl Pederson", 0757936374);

CREATE TABLE bookings
(
    booking_id INT,
    booking_date DATE,
    table_number INT,
    number_of_guests INT,
    customer_id INT
); 

INSERT INTO bookings (booking_id, booking_date, table_number, number_of_guests, customer_id) VALUES
(10, '2021-11-10', 7, 5, 1),  
(11, '2021-11-10', 5, 2, 2),  
(12, '2021-11-10', 3, 2, 4), 
(13, '2021-11-11', 2, 5, 5),  
(14, '2021-11-11', 5, 2, 6),  
(15, '2021-11-11', 3, 2, 7), 
(16, '2021-11-11', 3, 5, 1),  
(17, '2021-11-12', 5, 2, 2),  
(18, '2021-11-12', 3, 2, 4), 
(19, '2021-11-13', 7, 5, 6),  
(20, '2021-11-14', 5, 2, 3),  
(21, '2021-11-14', 3, 2, 4);

CREATE TABLE courses
(
    course_name VARCHAR(255) PRIMARY KEY,
    cost DECIMAL(4,2)
);

INSERT INTO courses (course_name, cost) VALUES 
("Greek salad", 15.50), 
("Bean soup", 12.25), 
("Pizza", 15.00), 
("Carbonara", 12.50), 
("Kabasa", 17.00), 
("Shwarma", 11.30);

-- task 1.
-- print all records from "bookings" table
-- the following bookings dates using the BETWEEN operator 2021-11-11, 2021-11-12 and 2021-11-13
SELECT *
FROM bookings
WHERE booking_date BETWEEN "2021-11-11" AND "2021-11-13";

-- task 2. 
-- create a JOIN SQL statement on the "customers" and "bookings" tables. 
-- the statement must print the customers full names and related bookings IDs from the date 2021-11-11
SELECT
    customers.full_name AS full_name,
    bookings.booking_id AS booking_id
FROM
    customers
    INNER JOIN bookings ON customers.customer_id = bookings.customer_id
WHERE booking_date = "2021-11-11";

-- task 3.
-- print the bookings dates from "bookings" table
-- the statement must show the total number of bookings placed on each of the printed dates using the GROUP BY "booking_date"
SELECT
    booking_date,
    COUNT(booking_date)
FROM bookings
GROUP BY booking_date;

-- task 4. create a SQL REPLACE statement that updates the cost of the Kabsa course from $17.00 to $20.00
REPLACE INTO courses (course_name, cost)
VALUES ("Kabsa", 20);

-- task 5. create constraints
-- create a new table called "delivery_address"
-- id: INT PRIMARY KEY
-- address: VARCHAR(255) NOT NULL
-- type: VARCHAR(100) NOT NULL DEFAULT "Private"
-- customer_id: INT NOT NULL FOREIGN KEY referencing customer_id in the "customers" table
CREATE TABLE delivery_address
(
    id INT PRIMARY KEY,
    address VARCHAR(255) NOT NULL,
    type VARCHAR(100) NOT NULL DEFAULT "Private",
    customer_id INT NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES customers (customer_id) 
);

-- task 6. alter table structure
-- add a new column called "ingredients" to the "courses" table
-- ingredients: VARCHAR(255)
ALTER TABLE courses
ADD COLUMN ingredients VARCHAR(255);

SHOW COLUMNS FROM courses;

-- task 7. create a subquery
-- prints the full names of all customers who made bookings in the restaurant on the following date 2021-11-11
SELECT full_name
FROM customers
WHERE customer_id IN
(
    SELECT customer_id
    FROM bookings
    WHERE booking_date = "2021-11-11"
);

-- or
SELECT full_name
FROM customers
WHERE EXISTS
(
    SELECT customer_id
    FROM bookings
    WHERE
        booking_date = "2021-11-11"
        AND customers.customer_id = bookings.customer_id
);

-- task 8. create virtual table
-- create the "bookings_view"
-- print all booking_id, booking_date
-- and the number of guests for bookings made in the restaurant before 2021-11-13 and where number of guests is larger than 3
CREATE VIEW bookings_view
AS
SELECT
    booking_id,
    booking_date,
    number_of_guests
FROM bookings
WHERE
    booking_date < "2021-11-13"
    AND number_of_guests > 3;

-- task 9. create a stored procedure
-- create a stored procedure called "PROC_GET_BOOKING_DATA"
-- the procedure must contain one date parameter called "input_date"
-- this parameter retrieves all data from the "bookings" table based on the user input of the date
-- call the "PROC_GET_BOOKING_DATA" with "2021-11-13" as the input_date
CREATE PROCEDURE PROC_GET_BOOKING_DATA(input_date DATE)
SELECT *
FROM bookings
WHERE booking_date = input_date;

CALL PROC_GET_BOOKING_DATA("2021-11-13")

-- task 10. use the string function
--  list "booking_details" including booking_id, booking_date and number of guests
SELECT CONCAT("id: ", booking_id, ", date: ", booking_date, ", number_of_guests: ", number_of_guests) AS booking_details
FROM bookings;