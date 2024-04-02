/*
 * IN
 * - is like a shorthand for multiple OR conditions
 * SELECT *
 * FROM table_name
 * WHERE column_name IN (value1, value2,...);
 * 
 * BETWEEN
 * - selects values within this given range
 * - include "numbers", "text", "date"
 * SELECT *
 * FROM table_name
 * WHERE column_name BETWEEN value1 AND value2;
 * 
 * LIKE
 * - is used to filter data based on pattern matching
 * - percent sign represents 0, 1 or multiple characters
 * - underscore sign represents single characters
 * SELECT *
 * FROM table_name
 * WHERE column_name LIKE 'g__%';
*/
