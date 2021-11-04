DROP
    DATABASE lab_4;
CREATE DATABASE lab_4; CREATE TABLE product_master(
    product_no VARCHAR(6) PRIMARY KEY CHECK
        (SUBSTR(product_no, 1, 1) = 'P'),
        description VARCHAR(15) NOT NULL,
        profit_percent VARCHAR(4) NOT NULL,
        unit_measure VARCHAR(10) NOT NULL,
        qty_onhand INT NOT NULL,
        reorder_lvl INT NOT NULL,
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
        addres_1 VARCHAR(30),
        addres_2 VARCHAR(30),
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
        addres_2 VARCHAR(30),
        city VARCHAR(15),
        state VARCHAR(15),
        pin_code INT
);