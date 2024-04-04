/*
 * ALTER TABLE
 * - make changes to a table in a database by altering column or constraints 
 * 
 * MODIFY
 * - make change to specific columns in a table
 * ALTER TABLE table_name
 * MODIFY [COLUMN] column1_name VARCHAR(10) NOT NULL
 * MODIFY [COLUMN] column2_name CHAR(10) NOT NULL
 * MODIFY [COLUMN] column3_name INT NOT NULL;
 * 
 * ADD
 * - add a column to a table
 * ALTER TABLE table_name
 * ADD [COLUMN] column_name;
 *
 * DROP
 * - drop a column from a table
 * ALTER TABLE table_name
 * DROP [COLUMN] column_name;
*/