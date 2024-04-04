/*
 * copy table process
 * 1. identify the table and database to be copied
 * 2. determine the columns to be copied
 * 3. build a new table using CREATE TABLE
 * 4. structure new table with SELECT command
 * 
 * CREATE TABLE new_table_name
 * SELECT columns
 * FROM existing_table_name;
 * 
 * CREATE TABLE database_x_name.new_table_name
 * SELECT columns
 * FROM database_y_name.existing_table_name;
*/