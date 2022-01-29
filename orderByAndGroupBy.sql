CREATE DATABASE lab_11; CREATE TABLE Student(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(32) NOT NULL,
    subject VARCHAR(25) NOT NULL,
    year INT NOT NULL
);

INSERT INTO Student VALUES
    (NULL, "Harsh", "English", 1),
    (NULL, "Pratik", "English", 1),
    (NULL, "Ramesh", "English", 1),
    (NULL, "Ashish", "English", 2),
    (NULL, "Suresh", "English", 2),
    (NULL, "Deepak", "Mathematics", 1),
    (NULL, "Sayan", "Mathematics", 1);

/*
    a) List the Names in ascending order from student table. 
*/
SELECT name FROM student ORDER BY(name);

/*
    b) List the names and year in descending order from student table
*/
SELECT name, year FROM student ORDER BY year, name DESC;

/*
    c) Find the number of students with both same SUBJECT and YEAR are placed in same group. 
*/
SELECT subject ,year, COUNT("students") FROM student GROUP BY YEAR, SUBJECT;