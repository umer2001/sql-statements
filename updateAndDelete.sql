/*
	4. Exercise on updating the records on a table
    A)Change the CITY of ClientNo’C00005’ to ‘Islamabad’.
*/
UPDATE
    client_master
SET
    city = "Islamabad"
WHERE
    client_no = "C00005";
    /*
	B) Change the BALDUE of ClientNo’C00001’ to Rs.1000. 
*/
UPDATE
    client_master
SET
    bal_due = 1000
WHERE
    client_no = "C00001";
    /*
	C) Change the COST_PRICE of ‘Shirt ‘ to Rs.450
*/
UPDATE
    product_master
SET
    cost_price = 450
WHERE
    description = "Shirt";
    /*
	D) Cange the CITY of salesman to Quetta
*/
UPDATE
    salesman_master
SET
    city = "Quetta";
    /*
	5. Exercise on deleting the records in a table 
    B) Dlete all products from the Product_master where qty_on hand is equal to 100 
*/
DELETE
FROM
    product_master
WHERE
    qty_onhand = 100;
    /*
	 C) Delete from the Client_master where the column state holds the value ‘Sindh’ 
*/
DELETE
FROM
    client_master
WHERE
    state = "Sindh";