/*
 * JOIN
 * - a join in a database links records of data between one or multiple tables based on a common column
 * 
 * INNER JOIN
 * - extracts or selects records of data that have matching values in both tables
 * SELECT table1_name.column_name
 * FROM
 *     table1_name
 * 	   INNER JOIN table2_name ON table1_name.column_name = table2_name.column_name;
 * 
 * LEFT JOIN
 * - extracts or selects records of data from left table and matching records from right table
 * SELECT
 *     tb1.column_name1 AS col1,
 *     tb2.column_name1 AS col2
 * FROM
 *     table1_name AS tb1
 * 	   LEFT JOIN table2_name AS tb2 ON tb1.column_name = tb2.column_name;
 * 
 * RIGHT JOIN
 * - extracts or selects records of data from left table and matching records from left table
 * SELECT
 *     tb1.column_name1 AS col1,
 *     tb2.column_name1 AS col2
 * FROM
 *     table1_name AS tb1
 * 	   RIGHT JOIN table2_name AS tb2 ON tb1.column_name = tb2.column_name;
 * 
 * SELF JOIN
 * - a table is joined with itself to compares rows in the table
 * SELECT
 *     tb1.column_name1 AS col1,
 *     tb2.column_name1 AS col2
 * FROM
 *     table1_name AS tb1
 * 	   INNER JOIN table1_name AS tb2 ON tb1.column_name = tb2.column_name;
*/



