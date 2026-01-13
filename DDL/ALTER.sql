-- DDL [Data Definition Language]
--     This statement is used to construct, modify and remove an object

-- There are 5 statements in DDL

-- 1. CREATE
-- 2. RENAME
-- 3. ALTER
-- 4. TRUNCATE
-- 5. DROP




-- 3. ALTER
--     This statement is used to modify the existing object

-- 1. To add a column
--    SYNTAX - ALTER TABLE TABLE_NAME
--             ADD COLUMN_NAME DATATYPE CONSTRAINTS TYPES;

-- 2. To drop a column 
--    SYNTAX - ALTER TABLE TABLE_NAME
--             DROP COLUMN COLUMN_NAME;

-- 3. To rename a column
--    SYNTAX - ALTER TABLE TABLE_NAME
--             RENAME COLUMN COLUMN_NAME TO NEW_COLUMN NAME;

-- 4. To modify datatypes
--    SYNTAX - ALTER TABLE TABLE_NAME
--             MODIFY COLUMN_NAME NEW  DATATYPE;

-- 5. To modify constraints
--    SYNTAX - ALTER TABLE TABLE_NAME
--    MODIFY COLUMN_NAME EXISTING DATATYPE CONSTRAINTS;              

-- NOTE - 

-- To add foreign key

-- ALTER TABLE TABLE_NAME
-- ADD CONSTRAINTS [REF_NAME] FOREIGN KEY (COLUMN_NAME)
-- PARENT_TABLE_NAME (COLUMN_NAME);