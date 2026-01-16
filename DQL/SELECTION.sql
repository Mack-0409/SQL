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

