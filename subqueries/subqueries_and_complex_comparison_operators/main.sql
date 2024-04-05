/*
 * SQL comparison operators
 * - ANY operator
 * - ALL operator
 * - SOME operator
 *
 * SELECT column_name
 * FROM table_name
 * WHERE expression > ALL
 * (
 *     SELECT column_name
 *     FROM table_name
 *     WHERE condition
 * );
 * 
 * EXIST operator
 * NOT EXIST operator
 *
 * SELECT column_name
 * FROM table_name
 * WHERE EXIST
 * (
 *     SELECT column_name
 *     FROM table_name
 *     WHERE condition
 * );
*/