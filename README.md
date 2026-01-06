# SQL
SQL - It is a language which is used to communicate or interact with databae.
SQL [Structured Query Language]

What is Data ?
-> Data is a raw fact that describes attribute of an entity. 
<!-- Attribute = Information  & Entity = Object -->

Basic operation peform on the database are....[CRUD]
1. CREATE / INSERT ,  
2. READ / RETRIVE ,
3. UPDATE / MODIFY ,
4. DELETE / DROP .

Generally known as "CRUD" operations.

# DBMS [Database Management System]

DBMS is a software we use to maintain and mnage database.
1. Authorization
2. Authentication

In DBMS we use query language to communicate. It is used to store data in file format.

# RDBMS 

RDBMS - A DBMS software were data will stored int the form of tables.
1. Authentication
2. Authorization

We can use Structured Query Language [SQL] to communicate.


# Difference between DBMS and RDBMS

DBMS 
1. DBMS is a software we used to maintain and manage the database.                                       
                                                
2. We use Query Language                               
                                                     
3. In DBMS data is stored in the file format.          
                                                     
4. Performing CRUD operationis difficult compared to 
   RDBMS. 

RDBMS
1. A DBMS  software which allows Relational model becomes [RDBMS].                                       
                                            
2. We use Structured Query Language [SQL]. 
                                                     
3. In RDBMS data is stred in the the form of tables.
                                                    
4. Performing CRUD operation is easy.   

# Relational Model 

1. It is a model designed by data scientist called as Edger Frank Codd [E.F.CODD] in the year of 1970s.
2. In Realational Model we store the data in the form of rows and columns.
3. If any DBMS follows Relation Model it will become RDBMS.

# TABLES
It is logical organization of data which consist row and columns.
1. Rows / Records / Tuple 
   It describes all the poperties of a single entity.

2. Column / Attribute / Field / Properties
   It describes single properties of all the entity. 

3. Cell 
   It is a smallest unit of a table or intersection between rows and columns generated a space that is called cell.   


# RULES OF E.F.CODD 

1. The data entered in a cell must be single value data.

2. In RDBMS we can store everything in the form of tables including meta data.

3. According to E.F.CODD we can store data in multiple tables and if it is needed we ca establish connection between those tables using key attributes.

4. The data entered into a table must be validated in two ways.
   1. By assigning datatypes
   2. By assigning constraints 

# DATATYPES
DataTypes - It is used to describe what kind of data will be going to store in particular column or memory location

NOTE :- DataTypes are manadatory and constraints are optional.

# Types of Data Types

1. CHAR - It is used to store Uppercase [A-Z], LowerCase [a-z], Number [0-9], Special Character [@,#,$,&], Alpha Numeric character.
   Syntax :- CHAR(SIZE) 
   SIZE :- It is used to specify number of character it can be stored.
   1. In CHAR data types we can store up to 2000 character.
   2. Character should be enclosed with in single quote.
   3. Whenever we assign CHAR data types we must mention size for it.
   4. Char follows fixed length memory allocation.   

2. VARCHAR DataTypes
   1. VARCHAR - It is used to store Uppercase [A-Z], LowerCase [a-z], Number [0-9], Special Character [@,#,$,&], Alpha Numeric character.
   Syntax :- VARCHAR(SIZE)   

   2. VARCHAR 2 - It is used to store Uppercase [A-Z], LowerCase [a-z], Number [0-9], Special Character [@,#,$,&], Alpha Numeric character.
   Syntax :- VARCHAR 2(SIZE)   

3. DATE -It is used to store dat in some specified format.
   Syntax - DATE
   Format - 
   1. 'DD-MON-YY'
   2. 'DD-MON-YYYY'

4. NUMBER - It is used to store Numeric values.
            [] not mandatory.
   1. Precision - It is used to determine the number of digits used to store integer value. The maximum size of precision is 38.
   2. Scale -                       