/*
Define/alter tables, relationships, indices

Most major DB engines use static, rigid typing, SQLites uses more dynamic typing
Main types: NULL, INTEGER, REAL, TEXT, BLOB
*/

CREATE TABLE students
(
    id INTEGER,
    firstName TEXT,
    lastName TEXT,
    email TEXT
)

/*
Column constraints
Primary key (non null and unique in every DMBS except SQLite)
Default value, if not explicitly provided is NULL
NOT NULL, cannot have null values
UNIQUE, does not imply NOT NULL, extra bookkeeping required and can impact performance

Primary key constraints
Unique identifier for table, can only have one per table but can be composed of multiple columns
*/

-- Multi column PK
CREATE TABLE classes
(
  department TEXT NOT NULL,
  courseNum INTEGER NOT NULL,
  name TEXT,
  PRIMARY KEY (department, courseNum)
);

/*
Inserting into table:
INSERT INTO <table_name> [(<col_name>,...)]
VALUES (<val1>, <val2>, …);

Updating databases ***use with caution, think about creating new tables instead of destroying***:
UPDATE <table_name>
   SET <col_name> = <new_val>, [...]
 WHERE some_expression;

UPDATE enrollment
   SET grade = ‘A’
 WHERE grade <> ‘A’;

UPDATE student
   SET email = ‘sam@northeastern.edu’
 WHERE id = 1324;
 */

