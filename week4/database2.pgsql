
postgres=# CREATE DATABASE department;
CREATE DATABASE
CREATE TABLE developers (
id SERIAL PRIMARY KEY,
name VARCHAR,
skill TEXT,
programming_lang VARCHAR DEFAULT 'HTML' 
);
                                                ^
department=# ALTER TABLE developers RENAME COLUMN skill TO age;
ALTER TABLE
 INSERT INTO developers(
department(# name,
department(# age,
department(# programming_lang)
department-# VALUES('Bakyt',
department(# 23,
department(# 'Python'
department(# );
INSERT 0 1
department=# INSERT INTO developers(
name,
age,
programming_lang)
VALUES('Beka',
15,
'Java'
);
INSERT 0 1
department=# INSERT INTO developers(
name,
age,
programming_lang)
VALUES('Gulya',
30,
'JavaScript'
);
INSERT 0 1
department=# INSERT INTO developers(
name,
age,
programming_lang)
VALUES('Beka',
39,
'Assembler'
);
INSERT 0 1
department=# ALTER TABLE developers ADD COLUMN cash INT;
ALTER TABLE
department=# INSERT INTO developers(              name,
age,
programming_lang)
VALUES('Katya',
16,
'Python',
);


        ^
department=# INSERT INTO developers(
name,
age,
programming_lang)
VALUES('Katya',
16,
'Python' 
);  
INSERT 0 1
department=# UPDATE developers SET cash = '3000';
UPDATE 5


department=# UPDATE developers SET cash = '3000' WHERE id = 5;
UPDATE 1

department=# UPDATE developers SET cash = '3000' WHERE id = 5;
UPDATE 1
department=# UPDATE developers SET cash = '3000' WHERE id = 4;
UPDATE 1


department=# UPDATE developers SET cash = 0 WHERE id = 5;
UPDATE 1

department=# UPDATE developers SET cash = 3000  WHERE id = 5;
UPDATE 1

department=# UPDATE developers SET cash = 0  WHERE id = 1;
UPDATE 1
department=# UPDATE developers SET cash = 0  WHERE id = 2;
UPDATE 1
department=# UPDATE developers SET cash = 0  WHERE id = 3;
UPDATE 1
department=# UPDATE developers SET cash = 0  WHERE id = 4;
UPDATE 1

----------------- Надо было ввести кое какие изменения
               ^
department=# UPDATE developers  SET age = '27' WHERE age > 25;
UPDATE 2
--------------Надо было оставить комментарий в столбце имя
department=# COMMENT ON COLUMN developers.name is 'Hellodatabase';
COMMENT

-------Здесь надо было поменять Катя на Екатерину
                              ^
department=# UPDATE developers SET name  = 'Ekaterina' WHERE name = 'Katya';
UPDATE 1



-- . Cоздайте БД kyrgyzstan
 CREATE DATABASE Kyrgyzstan;
CREATE DATABASE
---Creat the Table developers
CREATE TABLE developoers(
id SERIAL PRIMARY KEY,
name VARCHAR,
population INT
);
CREATE TABLE
-- Добавьте Chuy, 100000
-- 4. Добавьте Osh, 200000
-- 5. Добавьте Naryn, 300000
-- 6. Добавьте колонку teams
INSERT INTO developoers(
kyrgyzstan(# name,
kyrgyzstan(# population)
kyrgyzstan-# VALUES('chuy',
kyrgyzstan(# 100000
kyrgyzstan(# );
INSERT 0 1
kyrgyzstan=# INSERT INTO developoers(
name,
population)
VALUES('osh',
200000
);
INSERT 0 1
kyrgyzstan=# INSERT INTO developoers(
name,
population)
VALUES('Naryn',
300000
);
INSERT 0 1

-- Добавьте колонку teams
kyrgyzstan=# ALTER TABLE developoers ADD COLUMN teams VARCHAR;
ALTER TABLE
kyrgyzstan=# SELECT * FROM developoers;


-- Переименуйте колонку population на participants
ALTER TABLE developoers RENAME population TO participant;
ALTER TABLE


-- 8. Удалите записи где population равен 300000

DELETE FROM developoers WHERE participant = 300000;
DELETE 1

-- Так получилось что программа подсчёта участников сломалась и во всех
-- столбцах были добавлены лишние значения. Уменьшите количество
-- участников на 7000 везде где количество больше 80000.
UPDATE developoers SET participant = '7000' WHERE participant > 80000;
UPDATE 2
kyrgyzstan=# SELECT * FROM developoers; id | name | participant | teams 

------------------------------------------------------------------------------------------------------

-- Создайте БД companies
-- 2. Создайте таблицу phons(id,name,price)
-- 3. Добавьте запись, IPhone, 100
-- 4. Добавьте колонку country
-- 5. Добавьте запись, Samsung, 120, korea
-- 6. Добавьте запись, Nokia, 1000, kyrgyzstan
-- 7. Добавьте запись, MI, 1, uzbekstan
-- 8. Добавьте запись, Google, free, USA
-- 9. Создайте таблицу cars(id,name, price DEFAULT 300
-- 10. Добавьте запись MB, 1000
-- 11. Добавьте колонку country
-- 12. Добавьте запись Audi, 300, Germany
-- 13. Добавьте запись BMW, 12000, Germany
-- 14. Добавьте запись Tulpar, 1000000, Kyrgyzstan
-- 15. Добавьте значение Germany в country для MB
-- 16. Удалите записи, где цена меньше 1000

CREATE  DATABASE companies;
CREATE DATABASE

CREATE TABLE phone(id SERIAL PRIMARY KEY,
companies(# name VARCHAR,
companies(# price INT
companies(# );
CREATE TABLE


   ^
companies=# INSERT INTO phone(name,
price)
VALUES('Iphone',
100
);

ALTER TABLE phone ADD COLUMN country VARCHAR;
ALTER TABLE

INSERT INTO phone(name,price,country)
VALUES('Nokia',
1000,'Kyrgyzsta'
);U

 CREATE TABLE cars(id SERIAL  PRIMARY KEY,
name VARCHAR,
price INT  DEFAULT '300'
);
CREATE TABLE

ALTER TABLE cars ADD COLUMN country VARCHAR;
ALTER TABLE

INSERT INTO cars(name,
companies(# price,
companies(# country)
companies-# VALUES('Audi',
companies(# 300,'Germany'
companies(# );

INSERT INTO cars(name,
price,
country)
VALUES('Tulpar',
1000000,'Kyrgyzstan'
);

companies=# UPDATE cars SET country = 'Germany' WHERE id = 1;
UPDATE 1
companies=# DELETE FROM cars WHERE price < 1000;
DELETE 1

------конечный результат

SELECT * FROM cars;
 id |  name  |  price  |  country   
----+--------+---------+------------
  3 | BMW    |   12000 | Germany
  4 | Tulpar | 1000000 | Kyrgyzstan
  1 | MB     |    1000 | Germany