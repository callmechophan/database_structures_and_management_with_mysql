/*
 * subquery
 * - an inner query placed within an outer query
 * 
 * SELECT column_name
 * FROM table_name
 * WHERE expression operator
 * (
 *     SELECT column_name
 *     FROM table_name
 *     WHERE condition
 * );
 * 
 * subquery results
 * - single value
 * - single row
 * - single column
 * - multiple rows
 * 
 * SQL comparison operators
 * - equal to
 * - less than
 * - greater than
 * - less than or equal to
 * - greater than or equal to
 * - not equal to
 * SELECT column_name
 * FROM table_name
 * WHERE expression >
 * (
 *     SELECT column_name
 *     FROM table_name
 *     WHERE condition
 * );
*/