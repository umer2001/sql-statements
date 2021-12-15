DROP
    DATABASE lab_8;
/*
	creating DB AND TABLE
*/
CREATE DATABASE lab_8; CREATE TABLE customer(
    id INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(32) NOT NULL,
    age INT NOT NULL,
    address VARCHAR(100) NOT NULL,
    salary INT NOT NULL
);
/*
	INSERTING VALUES
*/
INSERT INTO customer
VALUES
    (NULL, "Akshay", 25, "Delhi", 30000),
    (NULL, "Manish", 27, "Mumbai", 35000),
    (NULL, "Kushagra", 26, "Kolkata", 30000),
    (NULL, "Mukesh", 31, "Hyderabad", 32000),
    (NULL, "Himanshu", 29, "Chennai", 40000),
    (NULL, "Neeraj", 30, "Noida", 36000),
    (NULL, "Nishant", 32, "Delhi", 30000);
/*
	NAMES with salary 30,000 and ADDRESS Delhi
*/
SELECT NAME
FROM
    customer
WHERE
    (
        salary = 30000 AND address = "Delhi"
    );
/*
	WHERE AGE 30 AND SALARY 40,000
*/
SELECT
    *
FROM
    customer
WHERE
    (age = 30 AND salary = 40000);
/*
	WHERE SALARY 32,000 OR 40,000
*/
SELECT
    *
FROM
    customer
WHERE
    (
        salary = 32000 OR salary = 40000
    );
/*
	ID, NAME, AGE & SALARY WHERE ADDRESS is not Hyderabad
*/
SELECT
    id,
    NAME,
    age,
    salary
FROM
    customer
WHERE
    (address != "Hyderabad");
/*
	WHERE ADDRESS Kolkata AND SALARY 30,000 OR 40,000
*/
SELECT
    *
FROM
    customer
WHERE
    (
        address = "Kolkata" AND(
            salary = 30000 OR salary = 40000
        )
    );