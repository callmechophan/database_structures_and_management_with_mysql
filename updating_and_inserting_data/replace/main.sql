/*
 * REPLACE
 * - checks for the primary or UNIQUE key of existing records
 * - adds new data if no matching key is found
 * - deletes and replaces the existing record if a match is found
 * 
 * REPLACE INTO table_name (column1, column2, column3)
 * VALUES (column1_value, column2_value, column3_value);
 * 
 * REPLACE INTO table_name
 * SET column_name = new_value;
*/