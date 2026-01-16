-- SELECTION 
-- It is used to retrive the data from the table by selecting both rows and columns.

-- -- SYNTAX
-- SELECT */[DISTINCT] COLUMN_NAME / EXPRESSION [ALIAS]
-- FROM TABLE_NAME
-- WHERE <FILTER CONDITION>;

-- -- ORDER OF EXECUTION
-- 1. FROM
-- 2. WHERE
-- 3. SELECT

-- -- WAQTD the name of the employee earning more than 2000
-- SELECT *
-- FROM EMP
-- WHERE SAL > 2000;

-- # WHERE CLAUSE
-- 1. It is used to filter the records.
-- 2. It executes row by row.
-- 3. In WHERE clause we write filter condition.
-- 4. It executes after the execution of FROM clause.
-- 5. In WHERE clause we can write multiple conditions by using logical operators.

-- # NOTE - 
-- 1. SQL is not a case sensitive language.
-- 2. TABLE DATA is case sensitive language.

-- -- WAQTD the details of employee earning less than 5000.
-- SELECT *
-- FROM EMP
-- WHERE SAL < 5000;

-- -- WAQTD name, job and hiredate of the employee working as salesman.
-- SELECT ENAME, JOB, HIREDATE
-- FROM EMP
-- SELECT JOB = 'SALESMAN';

-- -- WAQTD details of the employee hire after 1980.
-- SELECT *
-- FROM EMP
-- WHERE HIREDATE > '31-DEC-80';

-- -- WAQTD details of the employee hire before 1987.
-- SELECT *
-- FROM EMP
-- WHERE HIREDATE < '01-JAN-87';

-- -- WAQTD names, annual salary of the employee if there annual salary is more than 10000.
-- SELECT ENAME, SAL * 12 "ANNUAL SALARY"
-- FROM EMP
-- WHERE SAL * 12 > 10000; 

-- # NOTE -
-- [* / DISTINCT / ALIAS] We can use only one at a time

-- -- WAQTD details of the employee along with annual salary if they are earning more than 2000.
-- SELECT EMP.*, SAL * 12 "ANNUAL SALARY"
-- FROM EMP
-- WHERE SAL > 2000; 


----------------------------------------------------------------------------------------------------------------

-- # OPERATORS
-- Operator are the symbol used to preform specific tasked.

-- TYPES OF OPERATORS
-- 1. Arithmetic operators [ + , - , * , / ]
-- 2. Concatenation [ || ]
-- 3. Logical opertors [ AND , OR , NOT ]
-- 4. Comparsion opertors [ = , != ]
-- 5. Relational operators [ < , > , <= , >= ]
-- 6. Special operators [ in , not in , between , Not between , is , is not , like , not like ]
-- 7. Subquery operators [ ALL , ANY , EXIST , NOT EXIST ]



-- # LOGICAL OPERATORS
-- It is used to pass multiple conditions.

-- 1. AND - It is used whenever we want to satisfy all the condition
-- SYNTAX - SELECT * / EXPRESSION / COLUMN_NAME
         -- FROM EMP
         -- WHERE CONDITION 1 AND CONDITION 2.......................

-- -- WAQTD details of the employee earing more than 2000 and work as analysis.
-- SELECT *
-- FROM EMP
-- WHERE SAL > 2000 AND JOB = 'ANALYST';         


-- -- WAQTD details of employee hiredate after 1980 but working as salesman.
-- SELECT *
-- FROM EMP
-- WHERE HIREDATE > '31-DEC-80' AND JOB = 'SALESMAN';


-- -- WAQTD details of employee along with half term salary if the employee is hired after 1981 and before 1983 and earning more than 1000
-- SELECT EMP.* , SAL * 6 "HALF TERM SALARY" 
-- FROM EMP
-- WHERE HIREDATE > '31-DEC-81' AND HIREDATE < '1-JAN-83' AND SAL > 1000;  


-- -- WAQTD details of the employee hired in the year of 1981 and there annual salary is more than 8000 and they are working in department number 20.
-- SELECT EMP.* 
-- FROM EMP
-- WHERE HIREDATE >= '01-JAN-81' <= '31-DEC-81' AND SAL * 12 > 8000 AND DEPTNO = 20;


-- 2. OR - It is used whenever we want to satisfy any one of the conditions 
-- SYNTAX - SELECT * / EXPRESSION / COLUMN_NAME
         -- FROM TABLE_NAME
         -- WHERE CONDITION 1 OR CONDITION 2.......................CONDITION N.


-- -- WAQTD details of employee working as analyst or clerk or salesman.
-- SELECT *
-- FROM EMP
-- WHERE JOB = 'ANALYST' OR JOB = 'CLERK' OR 'SALESMAN';

-- -- WAQTD details of employee working as analyst or clerk but they are earning more than 2000
-- SELECT *
-- FROM EMP
-- WHERE (JOB = 'CLERK' OR JOB = 'ANALYST') AND SAL > 2000; 

-- -- WAQTD details of employee hired after 1982 and before 1987 working as manager or salesman in department number 20 or 30.
-- SELECT * 
-- FROM EMP 
-- WHERE HIREDATE > '31-DEC-82' AND 
--       HIREDATE < '01-JAN-87' AND 
--       ( JOB = 'MANAGER' OR JOB = 'SALESMAN' ) AND 
--       ( DEPTNO = 20 OR DEPTNO = 30 ); 


-- 3. NOT - It is used to inverse or reject the conditions.
-- SYNTAX - SELECT COLUMN_NAME / EXPRESSION
         -- FROM EMP
         -- WHERE NOT CONDITION;

-- -- WAQTD details of employee if they are not working in department number 20.
-- SELECT *
-- FROM EMP
-- WHERE NOT DEPTNO = 20;  

-- -- WAQTD details of employee if they are not working as analyst or salesman.
-- SELECT *
-- FROM EMP
-- WHERE NOT ( JOB = 'ANALYST' OR JOB = 'SALESMAN' );

-- -- WAQTD details of employee if they are working in department number 10, 20, 30, 40.
-- SELECT *
-- FROM EMP
-- WHERE DEPTNO = 10 OR DEPTNO = 20 OR DEPTNO = 30 OR DEPTNO = 40;


-- # SPECIAL OPERATOR 
-- 1. IN - It is multi value operator which accepts multiple values at R.H.S.
--         It behaves like equal operator.
--         It returns true if it is satisfy any one of the value at R.H.S.

-- SYNTAX - COLUMN_NAME / EXPRESSION IN (VALUE1, VALUE2, VLAUE3, ........)
-- EXAMPLE - SAL IN (100, 700);

-- -- WAQTD details of employee working as manager or president and working in department 10 or 20 and hired after 1980.
-- SELECT *
-- FROM EMP
-- WHERE JOB IN ( 'MANAGER', 'PRESIDENT' ) AND
--       DEPTNO IN (10 , 20) AND 
--       HIREDATE > '31-DEC-80';

-- 2. NOT IN - It is similar to IN operator instad of selecting it, it will reject the values.
-- SYNTAX - COUMN_NAME / EXPRESSION NOT IN (VALUES1, VALUES2, ..........) 
-- EXAMPLE - SAL NOT IN (100, 700);

-- -- WAQTD details of the employee if they are working in department number 10 or 30 but they are not working as salesman or manager or clerk.
-- SELECT *
-- FROM EMP
-- WHERE DEPTNO IN (10 , 30) AND
--       JOB NOT IN ('SALESMAN', 'MANAGER', 'CLERK');


-- 3. BETWEEN - It is used whenever we have a range of he values.
-- BETWEEN (STARTING_VALUE, ENDING_VALUE)
-- We cannot inter change the values.
-- BETWEEN operators works by including the given range.

-- SYNTAX - COLUMN_NAME / EXPRESSION BETWEEN (LOWER_RANGE AND HIGHER_RANGE);

-- -- WAQTD details of the employee if they are earning within the range of 1000 and 3000.
-- SELECT *
-- FROM EMP
-- WHERE SAL BETWEEN (1000 AND 3000);

-- -- WAQTD details of employee if they are hired after 1980 and before 1986 and earning within the range of 1000 and 5000.  
-- SELECT *
-- FROM EMP
-- WHERE HIREDATE BETWEEN ('01-JAN-81' AND '31-DEC-85') AND 
--       SAL BETWEEN (1000 AND 5000);  

-- -- WAQTD details of the employee earning more than 2000 and less than 6000 and they are having employee number of 7782 or 7844 or 7499.
-- SELECT *
-- FROM EMP
-- WHERE SAL BETWEEN (2001 AND 5999) AND EMPNO IN (7782, 7844, 7499); 

-- 4. NOT BETWEEN - It is similar to between operator insteaded of selecting the values it will reject the values.
-- NOT BETWEEN (STARTING_VALUE , ENDING_VALUE)
-- We cannot interchangethe value.
-- NOT BETWEEN operators works by including the given range.

-- SYNTAX - COLUMN_NAME / EXPRESSION NOT BETWEEN ( LOWER_RANGE AND HIGHER_RANGE )

-- -- WAQTD details of the employee if they are not hired in the year of 1981.
-- SELECT *
-- FROM EMP
-- WHERE HIREDATE NOT BETWEEN ('01-JAN-81' AND '31-DEC-81');


-- 5. IS - It is a special operator which is used to compared with null.
-- SYNTAX - COLUMN_NAME / EXPRESSION IS NULL;

-- -- WAQTD details of the employee if they are not earning commission
-- SELECT *
-- FROM EMP
-- WHERE COMM IS NULL;

-- -- WAQTD the details of employee if they don't have reporting manager.
-- SELECT *
-- FROM EMP
-- WHERE MGR IS NULL;

-- 6. IS NOT - It is special operator which is used to compare with NOT NULL.
-- SYNTAX - COLUMN_NAME / EXPRESSION IS NOT NULL;

-- -- WAQTD details of employee if they are earning commission.
-- SELECT *
-- FROM EMP
-- WHERE COMM IS NOT NULL;

-- 7. LIKE - It is used to match the pattern.
--    SYNTAX - COLUN_NAME / EXPRESSION LIKE 'PATTERN_TO_MATCH';

--     To achieve pattern matching we have 2 special character such as.
--     1. % - It can accept any number of character any number of times
--         Starts with character A - 'A%'
--         Ends with character A - '%A'
--         Has character A - '%A%'
--         Has character A present twice - '%A%A%'
--         Has two consecutive A - '%AA%'
--         Starts with A and ends with N - 'A%N'

    -- 2. Behaviour of '_' - It can accepts any character but only once.

-- -- WAQTD details of employee if they have character 'A' has a second character in the NAME.
-- SELECT *
-- FROM EMP
-- WHERE ENAME LIKE '_A%';

-- -- WAQTD details of employee if they have character 'A' in their name as a first character.
-- SELECT *
-- FROM EMP
-- WHERE ENAME LIKE 'A%';

-- -- WAQTD details of employee if they have character 'A' as a third character in their name.
-- SELECT *
-- FROM EMP
-- WHERE ENAME LIKE '__A%';

-- -- WAQTD details of employee if they have character 'A' as a second last character in their name.
-- SELECT *
-- FROM EMP
-- WHERE ENAME LIKE '%A_';

-- -- WAQTD details of employee if they have character 'A' as a first character and character M as a second last character in their name.
-- SELECT *
-- FROM EMP
-- WHERE ENAME LIKE 'A%M_';

-- -- WAQTD if they have 4 character in their name.
-- SELECT *
-- FROM EMP
-- WHERE ENAME LIKE '____';

-- -- WAQTD details of employee if they are hired in the year of 1981.
-- SELECT *
-- FROM EMP
-- WHERE HIREDATE LIKE '%81';

-- -- WAQTD details of employee if they are hired in the month of feb.
-- SELECT *
-- FROM EMP
-- WHERE HIREDATE LIKE '%FEB%';

-- -- WAQTD details of employee if there salary is starting with the digit of 50.
-- SELECT *
-- FROM EMP
-- WHERE SAL LIKE '50%';

-- -- WAQTD details of employee if they have character 'A' or character 'S' in there name and they have character 'MAN' in there job.
-- SELECT *
-- FROM EMP
-- WHERE ( ENAME LIKE '%A%' OR ENAME LIKE '%S%' ) AND JOB LIKE '%MAN%'; 

