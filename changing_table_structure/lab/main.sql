CREATE DATABASE mangata_gallo;

USE mangata_gallo;

-- task 1. create staffs table
-- staff_id: INT
-- full_name: VARCHAR(100)
-- phone_number: VARCHAR(10)
CREATE TABLE staffs
(
    staff_id INT,
    full_name VARCHAR(100),
    phone_number VARCHAR(10)
);

-- task 2. 
-- staff_id: INT NOT NULL and PRIMARY KEY
-- full_name: VARCHAR(100) and NOT NULL
-- phone_number: INT NOT NULL
ALTER TABLE staffs
MODIFY staff_id INT PRIMARY KEY,
MODIFY full_name VARCHAR(100) NOT NULL,
MODIFY phone_number INT NOT NULL;

-- task 3. add new column called "role"
-- role: VARCHAR(50) and NOT NULL
ALTER TABLE staffs
ADD role VARCHAR(50) NOT NULL;

-- task 4. drop columnn "phone_number"
ALTER TABLE staffs
DROP phone_number;