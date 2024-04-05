/*
 * views
 * - virtual tables used for accessing and manipulating data with MYSQL
 * - does not store any data itself, it acts as an interface that provides access to existing data
 *
 * create a subset
 * - focus on a subset of a table data
 * 
 * combine data
 * - combine data from multiple tables into one
 *
 * CREATE VIEW view_name
 * AS
 * SELECT
 *     column1,
 *     column2
 * FROM table_name;
 * 
 * CREATE VIEW view_name
 * AS
 * SELECT
 *     table1.column1,
 *     table1.column2,
 *     table2.column1,
 *     table2.column2
 * FROM
 *     table1
 *     INNER JOIN table2 ON table1.column1 = table2.column1
 * WHERE condition;
 * 
 * update
 * - you can make this change directly in the virtual table
 * UPDATE orders_view
 * SET cost = 250
 * WHERE order_id = 2;
*/