CREATE DATABASE lab_7; CREATE TABLE Employee(
    emp_no INT PRIMARY KEY,
    NAME VARCHAR(32) NOT NULL,
    job VARCHAR(35) NOT NULL,
    mgr INT,
    hired_date VARCHAR(30) NOT NULL,
    salary INT NOT NULL,
    dept_no INT NOT NULL
);

INSERT INTO Employee
VALUES
    (
        7839,
        "KING",
        "PRESIDENT",
        0,
        "17-NOV-81",
        5000,
        10
    ),
    (
        7698,
        "BLAKE",
        "MANAGER",
        7839,
        "1-MAY-81",
        2850,
        30
    ),
    (
        7782,
        "CLARK",
        "MANAGER",
        7839,
        "9-JUN-81",
        2450,
        10
    ),
    (
        7566,
        "JONES",
        "MANAGER",
        7698,
        "2-APR-81",
        2975,
        20
    ),
    (
        7654,
        "MARTIN",
        "SALESMAN",
        7698,
        "28-SEP-81",
        1250,
        30
    ),
    (
        7499,
        "ALLEN",
        "SALESMAN",
        7698,
        "20-FEB-81",
        1600,
        30
    ),
    (
        7844,
        "TURNER",
        "SALESMAN",
        7698,
        "8-SEP-81",
        1500,
        30
    ),
    (
        7900,
        "JAMES",
        "CLERK",
        7698,
        "3-DEC-81",
        950,
        30
    ),
    (
        7521,
        "WARD",
        "SALESMAN",
        7698,
        "22-FEB-81",
        1250,
        30
    ),
    (
        7902,
        "FORD",
        "ANALYST",
        7566,
        "3-DEC-81",
        3000,
        20
    ),
    (
        7369,
        "SMITH",
        "CLERK",
        7902,
        "17-SEP-80",
        800,
        20
    ),
    (
        7788,
        "SCOTT",
        "ANALYST",
        7566,
        "9-DEC-82",
        3000,
        20
    ),
    (
        7876,
        "ADAMS",
        "CLERK",
        7788,
        "12-JAN-83",
        1100,
        20
    ),
    (
        7934,
        "MILLER",
        "CLERK",
        7782,
        "23-JAN-82",
        1300,
        10
    );



/*
	A) Write a query to display the employee number, name and salary of all managers. 
*/
SELECT emp_no, name, salary FROM Employee WHERE(job = "MANAGER");
/*
	B) Write a query to display the name of all managers in department 20. 
*/
SELECT name FROM Employee WHERE(dept_no = 20 AND job = "MANAGER");
/*
	C) Write a query to display the name and department number of employee with number 7566. 
*/
SELECT name, dept_no FROM Employee WHERE(emp_no = 7566);
/*
	D) Write a query to select names of all jobs in a department. 
*/
SELECT DISTINCT job FROM Employee;
/*
	E) Write a query to Eliminating Duplicate Rows in Deptno column. 
*/
SELECT * FROM Employee GROUP BY dept_no;
