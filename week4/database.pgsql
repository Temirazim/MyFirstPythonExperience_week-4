

postgres=# CREATE DATABASE tourist;
CREATE DATABASE


tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Kyrgyzstan',
'USA',
'KyrgyzAirLines',
30);
INSERT 0 1
tourist=# SELECT * FROM inner_flights;
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Kyrgyzstan',
'Uzbekistan',
'KyrgyzAirLines',
123);
INSERT 0 1
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Kyrgyzstan',
'Khazakztan',
'KyrgyzAirLines',
53);
INSERT 0 1
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Kyrgyzstan',
'Afrika',
'UARairlines',
12);
INSERT 0 1
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Kyrgyzstan',
'Russia',
'Uralairlines',
12);
INSERT 0 1
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Kyrgyzstan',
'China',
'Chineseairlines',
50);
INSERT 0 1
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Kyrgyzstan',
'Mars',
'worldairlines',
230);
INSERT 0 1


tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Kyrgyzstan',
'luna',
'superairchmo',
56);
INSERT 0 1
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Kyrgyzstan',
'Gonduras',
'gondurasaviaperelet',
45);
INSERT 0 1
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('bishkek',
'Gimalai',
'gimalaiairlines',
500);
INSERT 0 1
tourist=# select * from inner_flights;
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('niotkuda',
'Nikuda',
'nikudatropalines',
65);
INSERT 0 1
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('otsuda',
'PryamovRai',
'nebesnyeairlinesy',
100);
INSERT 0 1
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('fromjob',
'domoi',
'azimAIRlines',
91);
INSERT 0 1
tourist=# select * from inner_flights;
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Istanbul',
'Bishkek',
'TurkishAirLines',
500);
INSERT 0 1
tourist=# INSERT INTO inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES('Germany',
'Bishkek',
'EuropeanAir',
144);
INSERT 0 1

tourist=# INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company,neighbors)
VALUES('Germany',
'Bishkek',
'Passanger',
azimAIR,250);
ERROR:  column "azimair" does not exist
LINE 9: azimAIR,250);
        ^
tourist=# INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Germany',
'Bishkek',
'Passanger',
azimAIR,250);
ERROR:  column "azimair" does not exist
LINE 9: azimAIR,250);
        ^
tourist=# INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Germany',
'Bishkek',
'Passanger',
'azimAIR', 250);
INSERT 0 1

tourist=# q
tourist-# INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('chinese',
'Bishkek',
'CArgo',
'Bagyt-tur', 1000);
ERROR:  syntax error at or near "q"
LINE 1: q
        ^
tourist=# q
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('chinese',
'Bishkek',
'CArgo',
'Bagyt-tur', 1000);
ERROR:  syntax error at or near "q"
LINE 1: q
        ^
tourist=#                              
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('chinese',
'Bishkek',
'CArgo',
'Bagyt-tur', 1000);
INSERT 0 1
tourist=#  
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('chinese',
'Bishkek',
'CArgo',
'Ak-Ilbirs', 500);
INSERT 0 1
tourist=# 
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('chinese',
'Bishkek',
'CArgo',
'nomadcargo', 5000);
INSERT 0 1
tourist=# 
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Moscow',
'gvineya',
'Passanger',
'RussianAirLines', 10);
INSERT 0 1
tourist=# 
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Moscow',
'Mozambik',
'Passanger',
'uralAIR', 5);
INSERT 0 1


tourist=#                              
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Italy',
'HainanIsland',
'Passanger',
'KyrgyzAirLines', 12);
INSERT 0 1
tourist=# 
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Italy',
'almaty',
'Passanger',
'KyrgyzAirLines', 4);
INSERT 0 1
tourist=# 
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Bishkek',
'OSH',
'Passanger',
'KyrgyzAirLines', 0);
INSERT 0 1
tourist=# 
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Bishkek',
'OSH',
'Passanger',
'KyrgyzAirLines', 2);
INSERT 0 1
tourist=# 
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Bishkek',
'OSH',
'Passanger',
'moscowair', 2);
INSERT 0 1
tourist=# selct *from outter_flights;
ERROR:  syntax error at or near "selct"
LINE 1: selct *from outter_flights;
        ^

tourist=#                            
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Bishkek',
'st-Petersburg',
'Passanger',
'moscowair', 5);
INSERT 0 1
tourist=# 
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Vietnam',
'Laos',
'cargo',
'asxsdc', 4);
INSERT 0 1
tourist=# 
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('chinese',
'Uzbekistan',
'cargo',
'TransLogisticGroup', 1);
INSERT 0 1
tourist=# SELECT * FROM outter_flights;

tourist=#                              
INSERT INTO outter_flights(
from_country,
to_country,
flight_types,
company, neighbors)
VALUES('Kyrgyzstan',
'Mongolia',
'cargo',
'TransLogisticGroup', 2);
INSERT 0 1

--  #Из таблицы inner_flights выведите все записи
SELECT * FROM inner_flights;
-- Из таблицы inner_flights выведите только те строки где id больше 10.

SELECT * FROM inner_flights WHERE id >10;

-- Из таблицы inner_flights выведите только те строки где страна прилёта Ош или Бишкек.

SELECT * FROM inner_flights WHERE to_destination = 'Bishkek';


--  Из таблицы inner_flights выведите только те строки где количество пассажиров больше 150.

SELECT * FROM inner_flights WHERE quantity > 150;
 
--  Из таблицы outter_flights выведите только имена компаний которые занимаются перевозкой.

SELECT * FROM outter_flights WHERE flight_types  = 'cargo';
 

 SELECT * FROM outter_flights WHERE flight_types  = 'CArgo';
 
--   Из таблицы outter_flights выведите только те строки где id меньше 7.
 SELECT * FROM outter_flights WHERE id < 7;


--    Из таблицы outter_flights выведите только те строки где самолёт пролетает больше чем над 3 странами.
SELECT * FROM outter_flights WHERE neighbors > 3;
 
--  Из таблицы outter_flights выведите только те строки где самолёт пролетает меньше чем над 3 странами И тип рейса пассажирский.
SELECT * FROM outter_flights WHERE neighbors < 3;
 
-- Из таблицы outter_flights выведите только имена всех компаний и страны прилёта.
SELECT to_country FROM outter_flights;
   

----------------------------------------------------------------------------------------------------------------

--  Создайте БД programmers.
-- Добавьте таблицу students:
-- id - Уникальный номер записи.
-- name - Имя студента
-- age - Возраст студента
-- fp_language - Основной Язык программирования
-- sp_language - Второй Язык программирования
-- В таблицу students, добавить записи:
-- id| name  | age| fp_language | sp_language
-- 1 | Bakyt | 23 | Python      | С++
-- 2 | Aygul | 46 | Python      | Java
-- 3 | Jika  | 13 | C           | Ruby_On_Rails
-- 4 | Ermek | 16 | Java        | C
-- 5 | Artem | 55 | C#          | Java
-- 6 | Roma  | 31 | Pascal      | C
-- 7 | Beka  | 25 | C#          | JavaScript

postgres=# CREATE DATABASE programmers;
CREATE DATABASE
postgres=# \c programmers 
You are now connected to database "programmers" as user "postgres".
programmers=# CREATE TABLE students(
programmers(# id SERIAL PRIMARY KEY,
programmers(# name TEXT,
programmers(# age INT,
programmers(# fp_language TEXT,
programmers(# sp_language TEXT
programmers(# );

programmers=# INSERT INTO students(
programmers(# name,
programmers(# age,
programmers(# fp_language,
programmers(# sp_language)
programmers-# VALUES('Bakyt',
programmers(# '23',
programmers(# 'Python',
programmers(# 'C++');
INSERT 0 1
programmers=# INSERT INTO students(
name,
age,
fp_language,
sp_language)
VALUES('Aigul',
'46',
'Python',
'Java');
INSERT 0 1
programmers=# INSERT INTO students(
name,
age,
fp_language,
sp_language)
VALUES('Jika',
'13',
'C',
'Ruby_On_Rails');
INSERT 0 1
programmers=# INSERT INTO students(
name,
age,
fp_language,
sp_language)
VALUES('Ermek',
'16',
'Java',
'C');
INSERT 0 1
programmers=# INSERT INTO students(
name,
age,
fp_language,
sp_language)
VALUES('Artem',
'55',
'C#',
'Java');
INSERT 0 1
programmers=# INSERT INTO students(
name,
age,
fp_language,
sp_language)
VALUES('Roma',
'31',
'Pascal',
'C');
INSERT 0 1
programmers=# INSERT INTO students(
name,
age,
fp_language,
sp_language)
VALUES('Beka',
'25',
'C#',
'JavaScript');
INSERT 0 1
programmers=# SELECT * FROM students;
 id | name  | age | fp_language |  sp_language  

--   Напишите запрос, который выводит все имена студентов и языки программирования
programmers=# SELECT name, fp_language, sp_language FROM students;
 

-- Напишите запрос, который выводит возраст студентов которым больше 30.
programmers=# SELECT *  FROM students WHERE age > 30;  
 
--   Выведите на экран всех студентов которые знают только Python или C#.
programmers=# SELECT * FROM students WHERE fp_language = 'Python' OR fp_language = 'C#' 
AND sp_language = 'Python' OR sp_language =  'C#';
 

--   Выведите на экран всех студентов которые знают Python и C# или C# и Java.

programmers=# SELECT * FROM students WHERE fp_language = 'Python' OR fp_language = 'C++' or fp_language = 'Java' OR fp_language = 'C#' AND sp_language = 'Python' OR sp_language = 'C#' or sp_language = 'C++' OR sp_language = 'Java';
 
--   Удалите всех студентов id которых равен 1, 3, 5, 7.
programmers=# DELETE  FROM students WHERE id = '1' OR id = '3' OR id = '5' OR id = '7';

 
-- Узнайте самого молодого студента который знает Java.

programmers=# SELECT * FROM students WHERE age= (SELECT MIN(age) FROM students);


-- Удалите таблицу students.
programmers=# DROP TABLE students;
DROP TABLE

-- Удалите БД programmers.
postgres=# DROP DATABASE programmers;
DROP DATABASE