-- -- PROJECTION SYNTAX 
-- SELECT * / [DISTINCT] COLUMN_NAME / EXPRESSION [ALIAS]
-- FROM TABLE_NAME ;

-- ORDER OF EXECUTION
-- 1. FROM
-- 2. SELECT

-- -- WAQTD the names of the student
-- SELECT *
-- FROM EMP;

-- -- WAQTD  Hiredate, Comm, Salary of the employee
-- SELECT HIREDATE, COMM, SAL
-- FROM EMP;

-- -- WAQTD name, dsignation and ID of the employee
-- SELECT ENAME, JOB, EMPNO
-- FROM EMP;

-- # EXPRESSION -
-- A statement which gives result is called an EXPRESSION [or]
-- The combination of operand and operator is called EXPRESSION
-- EXPRESSION consists of two types
-- 1. Operand [column name]
-- 2. Operator 

-- -- WAQTD Annual salary of the eemployee
-- SELECT SAL * 12 
-- FROM EMP;

-- -- WAQTD half term salary of employee and 300rs bonous in the salary
-- SELECT SAL * 6, SAL + 300
-- FROM EMP; 

-- -- WAQTD 30 percent increment in the salary
-- SELECT SAL * 0.3
-- FROM EMP;
-- [OR]
-- SELECT SAL + SAL * 30/100
-- FROM EMP;

-- -- WAQTD 20 percent decrement in the salary along with half term salary with 200rs increment and 5 percent increment in the salary
-- SELECT SAL - SAL * 0.2, SAL * 6 + 200, SAL + SAL * 0.05
-- FROM EMP;

-- # ALIAS 
-- It is an alternative name given to an column or expression int the result table.
-- It can be used with or without AS keyword.
-- ALIAS name should be single word or it should be enclosed with in double quotes ("") or we can use underscore (_) if it is having multiple words.
-- It is not mandatory but highly recommended
-- Example :- 
-- 1. SAL * 12 AS ANNUALSALARY
-- 2. SAL * 12 ANNUALSALARY
-- 3. SAL * 12 "ANNUAL SALARY"
-- 4. SAL * 12 ANNUAL_SALARY
