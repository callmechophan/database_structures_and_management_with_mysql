/*
 * UNION
 * - combines results sets from multiple statement
 * - returns distinct values from targeted tables
 * SELECT column1, column2
 * FROM table1
 * UNION
 * SELECT column1, column2
 * FROM table2;
 * 
 * column number
 * - same number of columns present in each SELECT statement
 * 
 * data types
 * - similar data types in related columns
 * 
 * column order
 * - all related columns must have same order
 * 
 * UNION ALL
 * - to list all values without removing duplicated data
 * SELECT column1, column2
 * FROM table1
 * UNION ALL
 * SELECT column1, column2
 * FROM table2;
*/