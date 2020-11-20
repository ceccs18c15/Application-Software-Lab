#Create table employdetails with empid references to the empid in the employee table

CREATE TABLE employee(
empid CHAR(4),
name CHAR(10) NOT NULL,
designation CHAR(30) NOT NULL,
dob DATE NOT NULL,
salary NUMERIC);

CREATE TABLE employdetails(
sex CHAR(1),
nationality CHAR(10),
gno INT,
PRIMARY KEY(gno),
empid CHAR(4) references EMPLOYEE(empid));

 INSERT INTO employee VALUES
 ('E1','JANA','MANAGER','1992-10-20','100000'),
 ('E2','MEERA','ACCOUNTANT','1990-09-18','80000');
 
 INSERT INTO employdetails VALUES
 ('F','KOREAN','27','E1'),
 ('F','CHINESE','56','E4');
 
 #Display the details of employeeswhere empid in employdetails
 
 SELECT * FROM employee WHERE empid IN (SELECT empid FROM employdetails);
 
 #display the details of employee table where empid not in employdetails table
 
 SELECT * FROM employee WHERE empid NOT IN(SELECT empid FROM employdetails);



