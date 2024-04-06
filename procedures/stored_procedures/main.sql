/*
 * stored procedures
 * - reusable block of code invoked on command
 * 
 * benefit of stored procedures
 * - consistency
 * - reusability
 * - efficiency
 * 
 * CREATE PROCEDURE procedure_name(parameter_value INT)
 * SELECT column_name
 * FROM table_name
 * WHERE value = paramter_value;
 * 
 * or
 * DELIMITER //
 * CREATE PROCEDURE procedure_name(parameter_value INT)
 * BEGIN
 *     SELECT column_name
 *     FROM table_name
 *     WHERE value = paramter_value;
 * END //
 * 
 * call stored procedures
 * CALL procedure_name(parameter_value INT);
 * 
 * drop stored procedures
 * - must drop the stored procedure and re-create again (not ALTER)
 * DROP PROCEDURE procedure_name;
*/