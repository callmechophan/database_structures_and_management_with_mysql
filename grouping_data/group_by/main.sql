/*
 * GROUP BY
 * - groups rows in a table based on given column
 * - ensure that the GROUP BY columns are also present in the SELECT command
 * SELECT
 *     column1_name,
 *     column2_name
 * FROM table_name
 * WHERE condition
 * GROUP BY
 *     column1_name,
 *     column2_name;
 * 
 * SELECT
 *     column1_name,
 *     column2_name,
 *     MAX(column1_name) AS max_column1
 * FROM table_name
 * WHERE condition
 * GROUP BY
 *     column1_name,
 *     column2_name;
*/
