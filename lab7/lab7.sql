#a
   Create a table store. fields are order nno,code,item,quantity,price,discount,mrp
            CREATE TABLE store(
        order_no int primary key AUTO_INCREMENT,
        code varchar(10) not null,
        item varchar(30) not null,
        quantity int default 0,
        price float,
        discount int default 0,
        mrp float not null
);

#b
   Insert values into the table
           INSERT INTO store(code,item,quantity,price,discount,mrp)
            VALUES
            ("a123", "Macbook Pro 13", 14, 100999.99, 2000, 120000),
            ("a420", "iPhone 12", 12, 90000, 1000, 119900),
            ("a123", "Airpods Pro", 10, 30000, 0, 59900);

#c
   Display the table
            SELECT * FROM store;

#d
   Write an sql quesry to display the remainder if the amount of an each item in divided by  9
            SELECT MOD(price,9) FROM store;

#e
   Write sql query to display the amount in store and its square
           SELECT price,POWER(price,2) FROM store;

#f
   Write sql query to divide the amount in stock of each item by 7 in store table and display the result  round to the nearest integer
           SELECT ROUND(mrp DIV 7) FROM store;
