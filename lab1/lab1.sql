/*
 *DEVIKA J
 *S5 C
 *CHN18CS037
 *ROLL NO: 15
 *Application Software Lab 
 *Experiment 1
 */

Use LAB1;

#a
CREATE TABLE student (
   sno INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   marks INT NOT NULL,
   dept VARCHAR(20) NOT NULL
);

#b
ALTER TABLE student ADD COLUMN age INT NOT NULL;

#c
ALTER TABLE student MODIFY COLUMN dept VARCHAR(10); 

#d
ALTER TABLE student DROP COLUMN marks;

#e
RENAME TABLE student TO students;

#f
TRUNCATE TABLE students;

#g
DROP TABLE students;
