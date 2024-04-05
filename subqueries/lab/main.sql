CREATE DATABASE littlelemon_db;

USE littlelemon_db;

CREATE TABLE menu_items
( 
  item_id INT, 
  name VARCHAR(200), 
  type VARCHAR(100), 
  price INT,

  PRIMARY KEY (item_id)
); 

CREATE TABLE menus
( 
  menu_id INT, 
  item_id INT, 
  cuisine VARCHAR(100), 

  PRIMARY KEY (menu_id, item_id)
); 

CREATE TABLE bookings
( 
  booking_id INT, 
  table_no INT, 
  guest_first_name VARCHAR(100), 
  guest_last_name VARCHAR(100), 
  booking_slot TIME, 
  employee_id INT,

  PRIMARY KEY (booking_id) 
);  

CREATE TABLE table_orders
( 
  order_id INT, 
  table_no INT, 
  menu_id INT, 
  booking_id INT, 
  bill_amount INT, 
  quantity INT,

  PRIMARY KEY (order_id, table_no) 
);  

INSERT INTO menu_items
VALUES
    (1,'Olives','Starters', 5), 
    (2,'Flatbread','Starters', 5),
    (3, 'Minestrone', 'Starters', 8), 
    (4, 'Tomato bread','Starters', 8), 
    (5, 'Falafel', 'Starters', 7), 
    (6, 'Hummus', 'Starters', 5), 
    (7, 'Greek salad', 'Main Courses', 15), 
    (8, 'Bean soup', 'Main Courses', 12), 
    (9, 'Pizza', 'Main Courses', 15), 
    (10,'Greek yoghurt','Desserts', 7), 
    (11, 'Ice cream', 'Desserts', 6),
    (12, 'Cheesecake', 'Desserts', 4), 
    (13, 'Athens White wine', 'Drinks', 25), 
    (14, 'Corfu Red Wine', 'Drinks', 30), 
    (15, 'Turkish Coffee', 'Drinks', 10), 
    (16, 'Turkish Coffee', 'Drinks', 10), 
    (17, 'Kabasa', 'Main Courses', 17);

INSERT INTO menus
VALUES
    (1, 1, 'Greek'),
    (1, 7, 'Greek'),
    (1, 10, 'Greek'),
    (1, 13, 'Greek'),
    (2, 3, 'Italian'),
    (2, 9, 'Italian'),
    (2, 12, 'Italian'),
    (2, 15, 'Italian'),
    (3, 5, 'Turkish'),
    (3, 17, 'Turkish'),
    (3, 11, 'Turkish'),
    (3, 16, 'Turkish');

INSERT INTO bookings
VALUES
    (1,12,'Anna','Iversen','19:00:00',1),  
    (2, 12, 'Joakim', 'Iversen', '19:00:00', 1),
    (3, 19, 'Vanessa', 'McCarthy', '15:00:00', 3), 
    (4, 15, 'Marcos', 'Romero', '17:30:00', 4),
    (5, 5, 'Hiroki', 'Yamane', '18:30:00', 2),
    (6, 8, 'Diana', 'Pinto', '20:00:00', 5); 

INSERT INTO table_orders
VALUES
    (1, 12, 1, 1, 2, 86),
    (2, 19, 2, 2, 1, 37),
    (3, 15, 2, 3, 1, 37),
    (4, 5, 3, 4, 1, 40),
    (5, 8, 1, 5, 1, 43);

-- task 1. find all bookings that are due after the booking of the guest "Vanessa McCarthy"
SELECT *
FROM bookings
WHERE booking_slot >
(
    SELECT booking_slot
    FROM bookings
    WHERE guest_first_name = "Vanessa" AND guest_last_name = "McCarthy"
);

-- task 2. find the menu items that are more expensive than all the "Starters" and "Desserts"
SELECT *
FROM menu_items
WHERE price >
(
    SELECT MAX(price)
    FROM menu_items
    WHERE type IN ("Starters", "Desserts")
);

-- task 3. find the menu items that costs the same as the starter menu items that are Italian cuisine
SELECT *
FROM menu_items
WHERE price =
(
    SELECT price
    FROM
        menu_items
        LEFT JOIN menus ON menu_items.item_id = menus.item_id
    WHERE menu_items.type = "Starters" AND menus.cuisine = "Italian"
);

-- task 4.  find the menu items that were not ordered by the guests who placed bookings
SELECT *
FROM menu_items
WHERE NOT EXISTS
(
    SELECT *
    FROM
        table_orders
        JOIN menus ON table_orders.menu_id = menus.menu_id
    WHERE menu_items.item_id = menus.item_id
);

-- or
SELECT *
FROM menu_items
WHERE item_id NOT IN
(
    SELECT item_id
    FROM
        table_orders
        JOIN menus ON table_orders.menu_id = menus.menu_id
);