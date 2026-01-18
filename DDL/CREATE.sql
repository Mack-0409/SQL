DDL [Data Definition Language]
    This statement is used to construct, modify and remove an object

There are 5 statements in DDL

1. CREATE
2. RENAME
3. ALTER
4. TRUNCATE
5. DROP


1. CREATE
    It is used to construct an object.

SYNTAX - CREATE TABLE TABLE_NAME
         (
            COL_NAME 1 DATATYPE CONSTRAINTS,
            COL_NAME 1 DATATYPE CONSTRAINTS,
            COL_NAME 1 DATATYPE CONSTRAINTS,
            .
            .
            .
            .
            COL_NAME N DATATYPE CONSTRAINTS,    
         );


EXAMPLE - CREATE TABLE ZOMATO
          (
            HID NUMBER(4) PRIMARY KEY,
            HNAME VARCHAR(15) NOT NULL,
            LOC VARCHAR(10) NOT NULL,
            RATING NUMBER(1) CHECK(RATING >= 0),
            MOB_NO NUMBER(10) UNIQUE NOT NULL CHECK (LENGTH(MOB_NO)==10),
            EMAIL VARCHAR(15) NOT NULL UNIQUE,
            NO_F_CAT NUMBER(3) NOT NULL,
          );  