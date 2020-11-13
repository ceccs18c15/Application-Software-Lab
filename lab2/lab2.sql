#Create a table Employee with following specifications.
#Code character (4), name character (10), designation character(30), dob date, salary numeric.
 CREATE TABLE EMPLOYEE(
 CODE VARCHAR(4) NOT NULL UNIQUE PRIMARY KEY,
 NAME VARCHAR(10) NOT NULL,
 DESIGNATION VARCHAR(30) NOT NULL,
 DOB DATE NOT NULL,
 SALARY DECIMAL(8,2) DEFAULT NULL); 

#Insert 2 tuples into the table
 INSERT INTO EMPLOYEE VALUES
  ('E1','NIRANJANA','MANAGER','1994-10-09','190200.00'),
  ('E2','MEERA','HR','1998-03-20',170200.00);

#Select all details from the table.
 SELECT * FROM EMPLOYEE
 
#Change the salary of employee code is e1.
 UPDATE EMPLOYEE
 SET SALARY=250000.00
 WHERE CODE='E1';
 
#Delete a tuple from the table employee
 DELETE FROM EMPLOYEE
 WHERE CODE='E1';
 
 
 
 Submitted by: Devika J
 Reg No: CHN18CS037
 S5 C
 Roll No:15
 
