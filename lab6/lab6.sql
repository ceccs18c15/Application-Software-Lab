#a Create a table store. Fields are order no, code, item, quantity, price, discount, mrp

CREATE TABLE Store (
	`order_no` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `code` VARCHAR(20) NOT NULL,
    `item` VARCHAR(30) NOT NULL,
    `quantity` INTEGER UNSIGNED DEFAULT 1,
    `price` DECIMAL(10,2) NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT 0,
    `mrp` DECIMAL(10,2) NOT NULL
);


#b Insert values into the table

INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("PST", "PASTE", 2, 20, 0, 20),("BOK", "NOTEBOOK", 10, 45, 0.1, 50);


#c Display the table

SELECT * FROM Store;


#d Create a view with item_name and quantity for the above table

CREATE VIEW CART AS
SELECT `item`, `quantity` FROM Store;


#e Write a query to check whether any changes made to present table is reflected in view.

INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("GLD", "GOLD", 10, 5000, 0, 5000);
SELECT * FROM CART;


#f Write a query to delete a view

DROP VIEW CART;
