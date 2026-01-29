SELECTION 
It is used to retrive the data from the table by selecting both rows and columns.

-- SYNTAX
SELECT */[DISTINCT] COLUMN_NAME / EXPRESSION [ALIAS]
FROM TABLE_NAME
WHERE <FILTER CONDITION>;

-- ORDER OF EXECUTION
1. FROM
2. WHERE
3. SELECT

-- WAQTD the name of the employee earning more than 2000
SELECT *
FROM EMP
WHERE SAL > 2000;

# WHERE CLAUSE
1. It is used to filter the records.
2. It executes row by row.
3. In WHERE clause we write filter condition.
4. It executes after the execution of FROM clause.
5. In WHERE clause we can write multiple conditions by using logical operators.

# NOTE - 
1. SQL is not a case sensitive language.
2. TABLE DATA is case sensitive language.

-- WAQTD the details of employee earning less than 5000.
SELECT *
FROM EMP
WHERE SAL < 5000;

-- WAQTD name, job and hiredate of the employee working as salesman.
SELECT ENAME, JOB, HIREDATE
FROM EMP
SELECT JOB = 'SALESMAN';

-- WAQTD details of the employee hire after 1980.
SELECT *
FROM EMP
WHERE HIREDATE > '31-DEC-80';

-- WAQTD details of the employee hire before 1987.
SELECT *
FROM EMP
WHERE HIREDATE < '01-JAN-87';

-- WAQTD names, annual salary of the employee if there annual salary is more than 10000.
SELECT ENAME, SAL * 12 "ANNUAL SALARY"
FROM EMP
WHERE SAL * 12 > 10000; 

# NOTE -
[* / DISTINCT / ALIAS] We can use only one at a time

-- WAQTD details of the employee along with annual salary if they are earning more than 2000.
SELECT EMP.*, SAL * 12 "ANNUAL SALARY"
FROM EMP
WHERE SAL > 2000; 


--------------------------------------------------------------------------------------------------------------

# OPERATORS
Operator are the symbol used to preform specific tasked.

TYPES OF OPERATORS
1. Arithmetic operators [ + , - , * , / ]
2. Concatenation [ || ]
3. Logical opertors [ AND , OR , NOT ]
4. Comparsion opertors [ = , != ]
5. Relational operators [ < , > , <= , >= ]
6. Special operators [ in , not in , between , Not between , is , is not , like , not like ]
7. Subquery operators [ ALL , ANY , EXIST , NOT EXIST ]



# LOGICAL OPERATORS
It is used to pass multiple conditions.

1. AND - It is used whenever we want to satisfy all the condition
SYNTAX - SELECT * / EXPRESSION / COLUMN_NAME
         FROM EMP
         WHERE CONDITION 1 AND CONDITION 2.......................

-- WAQTD details of the employee earing more than 2000 and work as analysis.
SELECT *
FROM EMP
WHERE SAL > 2000 AND JOB = 'ANALYST';         


-- WAQTD details of employee hiredate after 1980 but working as salesman.
SELECT *
FROM EMP
WHERE HIREDATE > '31-DEC-80' AND JOB = 'SALESMAN';


-- WAQTD details of employee along with half term salary if the employee is hired after 1981 and before 1983 and earning more than 1000
SELECT EMP.* , SAL * 6 "HALF TERM SALARY" 
FROM EMP
WHERE HIREDATE > '31-DEC-81' AND HIREDATE < '1-JAN-83' AND SAL > 1000;  


-- WAQTD details of the employee hired in the year of 1981 and there annual salary is more than 8000 and they are working in department number 20.
SELECT EMP.* 
FROM EMP
WHERE HIREDATE >= '01-JAN-81' <= '31-DEC-81' AND SAL * 12 > 8000 AND DEPTNO = 20;


2. OR - It is used whenever we want to satisfy any one of the conditions 
SYNTAX - SELECT * / EXPRESSION / COLUMN_NAME
         FROM TABLE_NAME
         WHERE CONDITION 1 OR CONDITION 2.......................CONDITION N.


-- WAQTD details of employee working as analyst or clerk or salesman.
SELECT *
FROM EMP
WHERE JOB = 'ANALYST' OR JOB = 'CLERK' OR 'SALESMAN';

-- WAQTD details of employee working as analyst or clerk but they are earning more than 2000
SELECT *
FROM EMP
WHERE (JOB = 'CLERK' OR JOB = 'ANALYST') AND SAL > 2000; 

-- WAQTD details of employee hired after 1982 and before 1987 working as manager or salesman in department number 20 or 30.
SELECT * 
FROM EMP 
WHERE HIREDATE > '31-DEC-82' AND 
      HIREDATE < '01-JAN-87' AND 
      ( JOB = 'MANAGER' OR JOB = 'SALESMAN' ) AND 
      ( DEPTNO = 20 OR DEPTNO = 30 ); 


3. NOT - It is used to inverse or reject the conditions.
SYNTAX - SELECT COLUMN_NAME / EXPRESSION
         FROM EMP
         WHERE NOT CONDITION;

-- WAQTD details of employee if they are not working in department number 20.
SELECT *
FROM EMP
WHERE NOT DEPTNO = 20;  

-- WAQTD details of employee if they are not working as analyst or salesman.
SELECT *
FROM EMP
WHERE NOT ( JOB = 'ANALYST' OR JOB = 'SALESMAN' );

-- WAQTD details of employee if they are working in department number 10, 20, 30, 40.
SELECT *
FROM EMP
WHERE DEPTNO = 10 OR DEPTNO = 20 OR DEPTNO = 30 OR DEPTNO = 40;


# SPECIAL OPERATOR 
1. IN - It is multi value operator which accepts multiple values at R.H.S.
        It behaves like equal operator.
        It returns true if it is satisfy any one of the value at R.H.S.

SYNTAX - COLUMN_NAME / EXPRESSION IN (VALUE1, VALUE2, VLAUE3, ........)
EXAMPLE - SAL IN (100, 700);

-- WAQTD details of employee working as manager or president and working in department 10 or 20 and hired after 1980.
SELECT *
FROM EMP
WHERE JOB IN ( 'MANAGER', 'PRESIDENT' ) AND
      DEPTNO IN (10 , 20) AND 
      HIREDATE > '31-DEC-80';

2. NOT IN - It is similar to IN operator instad of selecting it, it will reject the values.
SYNTAX - COUMN_NAME / EXPRESSION NOT IN (VALUES1, VALUES2, ..........) 
EXAMPLE - SAL NOT IN (100, 700);

-- WAQTD details of the employee if they are working in department number 10 or 30 but they are not working as salesman or manager or clerk.
SELECT *
FROM EMP
WHERE DEPTNO IN (10 , 30) AND
      JOB NOT IN ('SALESMAN', 'MANAGER', 'CLERK');


3. BETWEEN - It is used whenever we have a range of he values.
BETWEEN (STARTING_VALUE, ENDING_VALUE)
We cannot inter change the values.
BETWEEN operators works by including the given range.

SYNTAX - COLUMN_NAME / EXPRESSION BETWEEN (LOWER_RANGE AND HIGHER_RANGE);

-- WAQTD details of the employee if they are earning within the range of 1000 and 3000.
SELECT *
FROM EMP
WHERE SAL BETWEEN (1000 AND 3000);

-- WAQTD details of employee if they are hired after 1980 and before 1986 and earning within the range of 1000 and 5000.  
SELECT *
FROM EMP
WHERE HIREDATE BETWEEN ('01-JAN-81' AND '31-DEC-85') AND 
      SAL BETWEEN (1000 AND 5000);  

-- WAQTD details of the employee earning more than 2000 and less than 6000 and they are having employee number of 7782 or 7844 or 7499.
SELECT *
FROM EMP
WHERE SAL BETWEEN (2001 AND 5999) AND EMPNO IN (7782, 7844, 7499); 

4. NOT BETWEEN - It is similar to between operator insteaded of selecting the values it will reject the values.
NOT BETWEEN (STARTING_VALUE , ENDING_VALUE)
We cannot interchangethe value.
NOT BETWEEN operators works by including the given range.

SYNTAX - COLUMN_NAME / EXPRESSION NOT BETWEEN ( LOWER_RANGE AND HIGHER_RANGE )

-- WAQTD details of the employee if they are not hired in the year of 1981.
SELECT *
FROM EMP
WHERE HIREDATE NOT BETWEEN ('01-JAN-81' AND '31-DEC-81');


5. IS - It is a special operator which is used to compared with null.
SYNTAX - COLUMN_NAME / EXPRESSION IS NULL;

-- WAQTD details of the employee if they are not earning commission
SELECT *
FROM EMP
WHERE COMM IS NULL;

-- WAQTD the details of employee if they don't have reporting manager.
SELECT *
FROM EMP
WHERE MGR IS NULL;

6. IS NOT - It is special operator which is used to compare with NOT NULL.
SYNTAX - COLUMN_NAME / EXPRESSION IS NOT NULL;

-- WAQTD details of employee if they are earning commission.
SELECT *
FROM EMP
WHERE COMM IS NOT NULL;

7. LIKE - It is used to match the pattern.
   SYNTAX - COLUN_NAME / EXPRESSION LIKE 'PATTERN_TO_MATCH';

    To achieve pattern matching we have 2 special character such as.
    1. % - It can accept any number of character any number of times
        Starts with character A - 'A%'
        Ends with character A - '%A'
        Has character A - '%A%'
        Has character A present twice - '%A%A%'
        Has two consecutive A - '%AA%'
        Starts with A and ends with N - 'A%N'

    2. Behaviour of '_' - It can accepts any character but only once.

-- WAQTD details of employee if they have character 'A' has a second character in the NAME.
SELECT *
FROM EMP
WHERE ENAME LIKE '_A%';

-- WAQTD details of employee if they have character 'A' in their name as a first character.
SELECT *
FROM EMP
WHERE ENAME LIKE 'A%';

-- WAQTD details of employee if they have character 'A' as a third character in their name.
SELECT *
FROM EMP
WHERE ENAME LIKE '__A%';

-- WAQTD details of employee if they have character 'A' as a second last character in their name.
SELECT *
FROM EMP
WHERE ENAME LIKE '%A_';

-- WAQTD details of employee if they have character 'A' as a first character and character M as a second last character in their name.
SELECT *
FROM EMP
WHERE ENAME LIKE 'A%M_';

-- WAQTD if they have 4 character in their name.
SELECT *
FROM EMP
WHERE ENAME LIKE '____';

-- WAQTD details of employee if they are hired in the year of 1981.
SELECT *
FROM EMP
WHERE HIREDATE LIKE '%81';

-- WAQTD details of employee if they are hired in the month of feb.
SELECT *
FROM EMP
WHERE HIREDATE LIKE '%FEB%';

-- WAQTD details of employee if there salary is starting with the digit of 50.
SELECT *
FROM EMP
WHERE SAL LIKE '50%';

-- WAQTD details of employee if they have character 'A' or character 'S' in there name and they have character 'MAN' in there job.
SELECT *
FROM EMP
WHERE ( ENAME LIKE '%A%' OR ENAME LIKE '%S%' ) AND JOB LIKE '%MAN%'; 


8. NOT LIKE - It is similar to like operator intead of selecting the pattern it will reject those pattern.

SYNTAX - COLUMN_NAME / EXPRESSION NOT LIKE 'PATTERN_TO_MATCH';

-- WAQTD details of employee if they are not hired i the year of 1981.
SELECT *
FROM EMP
WHERE HIREDATE NOT LIKE '%81';

# CONCATENATION OPERATOR ( || )
It is used to join or merge given 2 strings or more than two column.

SYNTAX - SELECT 'STRING1' || 'STRING2'
EXAMPLE - SELECT 'MR.' || ENAME || DEPTNO || MGR
          FROM EMP;

WAQTD official mail id od an employee.
SELECT ENAME || EMPNO || DEPTNO || '@gmail.com'
FROM EMP;


----------------------------------------------------------------------------------------------------------------


# FUNCTION - Function are the block of code or list of instruction which is used to perform specific task.
Types of Function
1. IN BUILT FUNCTION

1. SINGLE ROW FUNCTIONS [SRF] 
It executes row by row. It takes one input executes and generate one output  and goes to the next input and goes on. If we pass 'n' number of inputs to single row functons it returns 'n' number of outputs.

2. MULTI ROW FUNCTIONS / AGGREGATE / GROUP FUNCTIONS [MRF] 
It is also known as group function or aggregate functions. It executes group by group. It takes all the input at once and aggregate [combine] it and generate single output. If we pass 'n' number of inputs to multi row function it will return single input.

LIST OF MRF [MULTI ROW FUNCTIONS]

1. MAX() - It is used to obtain the maximun value present in the column.

2. MIN() - It is used to obtain the minimum value present in the column.

3. AVG() - It is used to obtain the average of the value present in the column.

4. SUM() - It used to obtain the summation of the value present in the column.

5. COUNT() - It is used to obtain the number of values present in the column.  

# CHARACTERISTIC OF MULTI ROW FUNCTION () - 

1. For MULTI ROW FUNCTION () we can pass only one argument.
2. Along with MULTI ROW FUNCTION we cannot pass any other column name in the SELECT clause.
3. MULTI ROW FUNCTION ignores NULL.
4. In WHERE claues we cannot pass MULTI ROW FUNCTION.
5. COUNT() is only one MULTI ROW FUNCTION which accepts * as an argument.


-- WAQTD number of employees working in department 20.
SELECT COUNT(*)
FROM EMP
WHERE DEPTNO = 20;

-- WAQTD MAX and MIN salary of the employee hired after 1982 and beore 1988 and they have character 'MAN' in there job on first.
SELECT MIN(SAL), MAX(SAL)
FROM EMP
WHERE HIREDATE BETWEN ( '01-JAN-83' AND '31-DEC-87') AND JOB LIKE 'MAN%';

-- WAQTD number of employee working in department number 10,20,30.
SELECT COUNT(*)
FROM EMP
WHERE DEPTNI IN (10,20,30);

-- WAQTD number of employee working in each departmenet.
SELECT COUNT(*)
FROM EMP;


----------------------------------------------------------------------------------------------------------------


# GROUP BY - It is used to group the records.

SYNTAX - SELECT GROUP_FUNCTION / GROUP_BY_EXPRESSION
         FROM TABLE_NAME
         [ WHERE <FILTER CONDITION> ]
         GROUP BY COLUMN_NAME / EXPRESSION;

ORDER OF EXECUTION - 
1. FROM TABLE_NAME
2. [ WHERE <FILTER CONDITION> ] ----------------ROW BY ROW
3. GROUP BY COLUMN_NAME / EXPRESSION; ----------ROW BY ROW  
4. SELECT GROUP_FUNCTION / GROUP_BY_EXPRESSION--GROUP BY GROUP


# CHARACTERISTIC OF GROUP BY CLAUSE 
1. GROUP BY clause is used to group the records.
2. GROUP BY clause executes GROUP BY GROUP.
3. After the execution of GROUP BY clause we are getting groups.
4. Any clause executes after GROUP BY clause it executes GROUP BY GROUP.
5. The column name / Expression used for grouping can be written in the SELECT clause that will be called as GROUP_BY_EXPRESSION.
6. GROUP BY clause can be used with or without WHERE clause.


-- WAQTD number of employees working in each department.
SELECT COUNT(*), JOB
FROM EMP
GROUP BY JOB;

-- WAQTD MAX and MIN salary of th employee if they have character A in there name in each department.
SELECT MAX(SAL) , MIN(SAL) , DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY DEPTNO;

-- WAQTD MAX salary of the employee along with there average salary if there salary is more than 2000 and they are hired after 1980 in each job. 
SELECT MAX(SAL) , AVG(SAL) , JOB
FROM EMP
WHERE SAL > 2000 AND HIREDATE > '31-DEC-80'
GROUP BY JOB;

-- WAQTD UNIQUE SALARY
SELECT SAL
FROM EMP
GROUP BY SAL;

-- WAQTD number of times salary have been repeated in the employee table.
SELECT COUNT(*), SAL
FROM EMP
GROUP BY SAL;

-- WAQTD number of employees working in department if there are atleast 2 employee working in each department.
SELECT COUNT(*) , DEPTNO
FROM EMP
GROUP BY DEPTNO;


----------------------------------------------------------------------------------------------------------------

# HAVING CLAUSE - It is used to filter the groups.

SYNTAX - SELECT COLUMN_NAME / GROUP BY EXPRESSION
         FROM TABLE_NAME
         [WHERE <FILTER CONDITION>]
         GROUP BY COLUMN_NAME / EXPRESSION 
         HAVING <GROUP FILTER CONDITION>;   


ORDER OF EXECUTION - 
1. FROM TABLE_NAME
2. [WHERE <FILTER CONDITION>]
3. GROUP BY COLUMN_NAME / EXPRESSION 
4. HAVING <GROUP FILTER CONDITION>;  
5. SELECT COLUMN_NAME / GROUP BY EXPRESSION   


# CHARACTERISTIC OF GROUP BY CLAUSE -
1. HAVING clause is used to filter the GROUPS.
2. HAVING clause xecutes GROUP BY GROUP.
3. HAVING clause executes after the execution of GROUP BY clause.
4. We write group filtr condition in HAVING clause.
5. We can pass MULTI ROW FUNCTION in HAVING clause.
6. To use HAVING clause GROUP clause is manadatory.
7. We can pass multiple conditions in HAVING clause by using logical operator. 


-- WAQTD number of employee working in each department if there are exactly 2 analyst in each department.
SELECT COUNT(*), DEPTNO
FROM EMP
JOB = ANALYST
GROUP BY DEPTNO
HAVING COUNT(*) = 2;

-- WAQTD average salary of the employee working in each job if average salary is needed to pay for all the employee is more than 3450.
SELECT AVG(SAL), JOB
FROM EMP
GROUP BY JOB
HAVING AVG(SAL) > 3450;


-- WAQTD maximum and minimum salary of employee working in each department if there maximum salary is more than 2000 and less than 5000 and they are earning in the range of 1000 to 7000 as a clerk or analysis.
SELECT MAX(SAL) , MIN(SAL), DEPTNO 
FROM EMP
WHERE SAL BETWEEN 1000 AND 7000 AND  JOB IN ('ANALYST','CLERK') 
GROUP BY DEPTNO
HAVING MAX(SAL) > 2000 AND MAX(SAL) < 5000;


-- WAQTD repeated salary
SELECT COUNT(*), SAL
FROM EMP
GROUP BY SAL
HAVING COUNT(*) > 1; 


# WHERE CLAUSE 
1. WHERE clause is used to filter the records.
2. WHERE clause executes row by row..
3. In WHERE clause we cannot use MRF[Multi Row Function].
4. WHERE clause executes before GROUP BY clause. 


# HAVING CLAUSE
1. HAVING clause is used to filter the GROUPS.
2. HAVING clause executes GROUP BY GROUP.
3. In WHERE clause we use MRF[Multi Row Function].
4. HAVING clause executes after GROUP BY clause.


-------------------------------------------------------------------------------------------------------------------------------

# ORDER BY
1. It is used to sort the records in ascending or descending order.
2. ORDER BY clause must be written as last clause in the statement.
3. ORDER BY clause executes after the SELECT clause.
4. By default, ORDER BY clause sort the records in ascending order.
5. We can pass column name or expression as an argument in ORDER BY clause.
6. We can pass ALIAS name in ORDER BY clause.

SYNTAX - SELECT GROUP_FUNCTION / GROUP_BY_EXPRESSION
         FROM TABLE_NAME
         [WHERE <FILTER CONDITION>]
         GROUP BY COLUMN_NAME / EXPRESSION
         HAVING <GROUP_FILTER_CONDITION>
         ORDER BY GROUP_FUNCTION / GROUP_BY_EXPRESSION [ASC] / DESC;

SYNTAX - SELECT COLUMN_NAME / EXPRESSION
         FROM TABLE_NAME
         WHERE <FILTER CONDITION>
         ORDER BY COLUMN_NAME / EXPRESSION [ASC] / DESC;



-- WAQTD salaries of the employee in arranging order.
SELECT SAL
FROM EMP
ORDER BY SAL;

-- WAQTD salaries of employee in decending order.
SELECT SAL
FROM EMP
ORDER BY SAL DESC;

-- WAQTD name, salaries of employee in decreasing order.
SELECT ENAME, SAL
FROM EMP
ORDER BY ENAME, SAL DESC;
-- WAQTD details of employee earning more than 2000.
SELECT *
FROM EMP
WHERE SAL > 2000; 

-------------------------------------------------------------------------------------------------------------------------------

# SUBQUERY 
A query which is written inside another query is called as Subquery.
1. Inner query
      Inner query executes first and generates the output.
      The output for the inner query will be given as input to the outer query.

2. Outer query
      The outer query generates the result.
      Therefore, we can say that the outer query is dependent on inner query.

-- WAQTD details of employee earning more than smith.
SELECT *
FROM EMP
WHERE SAL > (SELECT SAL
             FROM EMP
             WHERE ENAME = 'SMITH');


















