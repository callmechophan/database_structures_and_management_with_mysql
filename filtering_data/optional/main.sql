CREATE DATABASE luckyshrub_db;

USE luckyshrub_db;

CREATE TABLE employees
(
    employee_id int NOT NULL,
    employee_name varchar(150) DEFAULT NULL,
    department varchar(150) DEFAULT NULL,
    contact_no varchar(12) DEFAULT NULL,
    email varchar(100) DEFAULT NULL,
    annual_salary int DEFAULT NULL,
    PRIMARY KEY (employee_id)
);

INSERT INTO employees VALUES 
    (1,'Seamus Hogan', 'Recruitment', '351478025', 'Seamus.h@luckyshrub.com',50000), 
    (2,'Thomas Eriksson', 'Legal', '351475058', 'Thomas.e@ luckyshrub.com',75000), 
    (3,'Simon Tolo', 'Marketing', '351930582','Simon.t@ luckyshrub.com',40000), 
    (4,'Francesca Soffia', 'Finance', '351258569','Francesca.s@ luckyshrub.com',45000), 
    (5,'Emily Sierra', 'Customer Service', '351083098','Emily.s@ luckyshrub.com',35000), 
    (6,'Maria Carter', 'Human Resources', '351022508','Maria.c@ luckyshrub.com',55000),
    (7,'Rick Griffin', 'Marketing', '351478458','Rick.G@luckyshrub.com',50000);

-- 1 find employees who earn an annual salary of $50,000 or more attached to the Marketing department
SELECT *
FROM employees
WHERE
    annual_salary >= 50000
    AND department = 'Marketing';

-- 2 find employees not earning over $50,000 across all departments
SELECT *
FROM employees
WHERE NOT annual_salary > 50000;

-- 3 find Marketing, Finance, and Legal employees whose annual salary is below $50,000
SELECT *
FROM employees
WHERE
    annual_salary < 50000
    AND department IN ('Marketing', 'Finance', 'Legal');

-- 4 find employees who earn annual salaries between $10,000 and $50,000
SELECT *
FROM employees
WHERE annual_salary BETWEEN 10000 AND 50000;

-- 5 find employees whose names start with ‘S’ and are at least 4 characters in length
SELECT *
FROM employees
WHERE employee_name LIKE 'S___%';
