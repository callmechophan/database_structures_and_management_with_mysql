/*
 * MYSQL constraints
 * - used to ensure that each value in a column cell is unique
 * - EX: NOT NULL, UNIQUE, CHECK, PRIMARY KEY, FOREIGN KEY, DEFAULT
 * 
 * key constraints
 * - apply rules to key types
 * - EX: PRIMARY KEY
 * 
 * domain constraints
 * - govern values stored for a specific column
 * - EX: CHECK(number_of_guest <= 8)
 * 
 * referential integrity constraints
 * - establish rules for referential keys
 * - EX: PRIMARY KEY (referencing table) related FOREIGN KEY (referenced table)
 * - ON DELETE CASCADE: automatically deletes (customers update (PK) -> bookings update (FK))
 * - ON UPDATE CASCASE: automatically updates (customers update (PK) -> bookings update (FK))
*/