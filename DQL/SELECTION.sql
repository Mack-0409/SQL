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

-- 