-- DDL [Data Definition Language]
--     This statement is used to construct, modify and remove an object

-- There are 5 statements in DDL

-- 1. CREATE
-- 2. RENAME
-- 3. ALTER
-- 4. TRUNCATE
-- 5. DROP


-- 5. DROP 
--     This statement is used to remove an object.

-- SYNTAX - DROP TABLE TABLE_NAME;

-- EXAMPLE - DROP TABLE EXAM;


-- NOTE - 

-- FLASHBACK - It is used to retrive the table from thr recycle bin.

-- SYNTAX - FLASHBACK TABLE TABLE_NAME
--          TO BEFORE DROP;

-- EXAMPLE - FLASHBACK TABLE EXAM 
--           TO BEFORE DROP;



-- PURGE - It is used to delete table or object from recycle bin.

-- SYNTAX - PURGE TABLE TABLE_NAME;

-- EXAMPLE - PURGE TABLE EXAM;