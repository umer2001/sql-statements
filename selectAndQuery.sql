CREATE DATABASE lab_6; CREATE TABLE product_master(
    product_no VARCHAR(6) PRIMARY KEY CHECK
        (SUBSTR(product_no, 1, 1) = 'P'),
        description VARCHAR(15) NOT NULL,
        profit_percent VARCHAR(4) NOT NULL,
        unit_measure VARCHAR(10) NOT NULL,
        qty_onhand INT NOT NULL,
        sell_price FLOAT
    CHECK
        (sell_price > 0),
        cost_price FLOAT
    CHECK
        (cost_price > 0)
);

CREATE TABLE client_master(
    client_no VARCHAR(6) PRIMARY KEY CHECK
        (SUBSTR(client_no, 1, 1) = 'C'),
        NAME VARCHAR(20) NOT NULL,
        city VARCHAR(15),
        state VARCHAR(15),
        pin_code INT,
        bal_due FLOAT
);

CREATE TABLE salesman_master(
    salesman_no VARCHAR(6) PRIMARY KEY CHECK
        (SUBSTR(salesman_no, 1, 1) = 'S'),
        NAME VARCHAR(20) NOT NULL,
        addres_1 VARCHAR(30) NOT NULL,
        city VARCHAR(15),
        state VARCHAR(15),
        pin_code INT,
        salary INT
);

INSERT INTO client_master
VALUES
    (
        "C00001",
        "Abdul Salam",
        "Lahore",
        "Punjab",
        400054,
        20000
    ),
    (
        "C00002",
        "Sheeraz",
        "Karachi",
        "Sindh",
        780001,
        0
    ),
    (
        "C00003",
        "Faraz",
        "Multan",
        "Punjab",
        560001,
        25000
    ),
    (
        "C00004",
        "Malik",
        "Hyderabad",
        "Sindh",
        780001,
        10000
    ),
    (
        "C00005",
        "Ali",
        "Faisalabad",
        "Punjab",
        400054,
        5000
    );

INSERT INTO product_master
VALUES
    (
        "P00001",
        "Tshirt",
        5,
        "piece",
        200,
        350,
        250
    ),
    (
        "P00065",
        "Shirt",
        6,
        "piece",
        150,
        500,
        350
    ),
    (
        "P00032",
        "Jeans",
        5,
        "piece",
        100,
        600,
        450
    ),
    (
        "P00324",
        "Skrits",
        4,
        "piece",
        120,
        750,
        500
    ),
    (
        "P02345",
        "Cottonjeans",
        3,
        "piece",
        80,
        850,
        550
    );

INSERT INTO salesman_master
VALUES(
    "S00001",
    "Aman",
    "A/4",
    "Karachi",
    "Sindh",
    400002,
    1000
),(
    "S00065",
    "Raj",
    "P-7",
    "Hydrabad",
    "Sindh",
    400001,
    2000
),(
    "S00032",
    "Abdullah",
    "A/5",
    "Multan",
    "Punjab",
    400032,
    3000
),(
    "S00324",
    "Vimal",
    "R-2",
    "Faislabad",
    "Punjab",
    400044,
    4000
),(
    "S02345",
    "Himmat",
    "B-3",
    "Lahore",
    "Punjab",
    400047,
    5000
);

/*
	A) Find out the names of all clients
*/
SELECT name FROM client_master;
/*
	B) Retrieve the entire contents of the Client _master table. 
*/
SELECT * FROM client_master;
/*
	C) Retrieve the list of names, city and the state of all the clients 
*/
SELECT NAME, city, state FROM client_master;
/*
	D) List the various products available from the Product _Master table 
*/
SELECT description FROM product_master;
/*
	E) List all the clients who are located in Hyderabad. 
*/
SELECT * FROM client_master WHERE(city = "Hyderabad");
/*
	F) Find the names of salesmen who have a salary equal to Rs.3000 
*/
SELECT NAME FROM salesman_master WHERE (salary = 3000);