---1 creation de base de donnée
CREATE DATABASE bootcamp;
---2 creation de la table
--CREATE TABLE students;
---3 Add the following columns:
CREATE TABLE students(id SERIAL, first_name VARCHAR(20) NOT NULL, last_name VARCHAR(25) NOT NULL, birth_date date );
 INSERT INTO students(first_name, last_name,birth_date) 
       VALUES ('Yoan' ,'Cohen',to_date('03/12/2010')),
       ('Lea', 'Benichou' ,to_date('27/07/1987')),
       ('Amelia','Dux',	to_date('07/04/1996')),
       ('David','Grez',	to_date('14/06/2003')),
       ('Omer','Simpson',to_date('03/10/1980'));

---4 
---1 .Fetch all of the data from the table.
SELECT * FROM students;
---2 .Fetch all of the students first_names and last_names.
SELECT first_name ,last_name FROM students ;
---3-1.Fetch the student which id is equal to 2.
SELECT first_name,last_name FROM students WHERE id = 2;
---3-2. Fetch the student whose last_name is Benichou AND first_name is Marc.
SELECT first_name , last_name FROM students WHERE first_name="Bénichou" AND last_name = "Marc";
---3-3. Fetch the students whose last_names are Benichou OR first_names are Marc.
SELECT first_name, last_name FROM students WHERE firs_name = "Bénichou" OR last_name = "Marc";
---3-4. Fetch the students whose first_names contain the letter a
SELECT first_name FROM student WHERE first_name LIKE "%a%";
---3-5. Fetch the students whose first_names start with the letter a
SELECT first_name FROM student WHERE first_name LIKE "a%";
---3-6. Fetch the students whose first_names end with the letter a
SELECT first_name FROM student WHERE first_name LIKE "%a";
---3-7.Fetch the students whose second to last letter of their first_names are a (Example: Leah)
SELECT first_name FROM student WHERE first_name LIKE "%__a%";
---3-8.Fetch the students whose id’s are equal to 1 AND 3 
SELECT first_name, last_names FROM student WHERE id IN (1,3);
---4 Fetch the students whose birth_dates are equal to or come after 1/01/2000. (show all their info).
SELECT birth_day FROM student WHERE birth_date >= to_date('1/01/2000' );

