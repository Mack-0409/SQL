-- DML [Data Manipulating Language]
-- DML is used to manipulate the table / object by inserting, updating or deleting the records.

-- With DML, we can insert new records, update existing records, deleting unwanted records or retrive informaion.

-- Types of DML statement
-- 1. INSERT
-- 2. UPDATE
-- 3. DELETE

-- 1. INSERT 
--     It is used to insert the records in the table.

-- 1. SYNTAX - INSERT INTO TABLE_NAME VALUES (values1, valuse2, .............., valuesN);

-- EXAMPLE - INSERT INTO EMP VALUES (1); 

-- 2. SYNTAX - INSERT INTO TABLE_NAME VALUES (&COL_NAME, &COL_NAME,............., &COL_NAMEN);

-- EXAMPLE - INSERT FROM EMP VALUES (&SID);


-- EXAMPLE - 

-- INSERT INTO BANK VALUES (&ACC_NO, '&NAME', &BALANCE);


-- Enter value for ACC_NO : 103
-- Enter value for NAME : JHON
-- Enter value for BALANCE : 2000

