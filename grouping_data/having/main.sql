/*
 * HAVING
 * - specifies a filter condition for the group data the GROUP BY generates
 * SELECT
 *     column1_name,
 *     column2_name,
 *     MAX(column1_name) AS max_column1
 * FROM table_name
 * WHERE condition
 * GROUP BY
 *     column1_name,
 *     column2_name
 * HAVING
 *     MAX(column1_name) > 100;
*/
