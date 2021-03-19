-- Посчитайте количество записей
-- 2. Сколько followerОВ у самого знаменитого пользователя
-- 3. Напишите запрос, который выводит всю информацию самого знаменитого пользователя
-- 4. Найдите среднее количество подписчиков
-- 5. Отсортируйте всех пользователей по логину
-- 6. Отсортируйте всех пользователей по стране
-- 7. Отсортируйте всех пользователей по email
-- 8. Напишите запрос,который выводит id из колонки пользователей и имя из колонки clients
-- 9. Напишите запрос,который выводит всё о пользователе, чей логин содержит as, cg, si, am, qwe, er, ka, an
-- 10. Напишите запрос,который выводит всё о пользователе, чей логин заканчивается на lol, kan, ck, ie. ig
-- 11. Напишите запрос, который выводит всё о пользователе, чей логин начинается на a, b, c, d, M, D, A
-- 12.Как зовут самого знаменитого Сеньор Программиста(Senior Programmer) из Израиля(Israel)?

clubhouse=# \i /home/azim/Desktop/part4.sql
CREATE TABLE

1)clubhouse=# SELECT * FROM part4;
clubhouse=# SELECT COUNT(*) FROM part4;
 count 
-------
  1000
2)clubhouse=# SELECT MAX(followers) FROM part4;
  max   
--------
 998294

 3)SELECT * FROM part4 WHERE followers=(SELECT MAX(followers) FROM part4);

 4)SELECT AVG(followers) FROM part4;

 5)SELECT users FROM part4 ORDER BY users;
 SELECT * FROM part4 ORDER BY users;

 6)SELECT *  FROM part4 ORDER BY country;
 

 7)SELECT *  FROM part4 ORDER BY email;

 8)SELECT id, clients FROM  part42;

 9)SELECT * FROM part4 WHERE users LIKE '%as%'OR users LIKE '%cg%'OR users LIKE '%si%'
OR users LIKE '%am%' OR users  LIKE '%qwe%' OR users LIKE '%er% 'OR users LIKE '%ka%'
OR users LIKE '%an%';


10)SELECT * FROM part4 WHERE users LIKE '%lol' 
OR users LIKE '%kan' OR users LIKE '%ck' OR users LIKE '% ie' OR users LIKE'% ig';

11)SELECT * FROM part4 WHERE users LIKE 'a%' OR users LIKE 'c%' OR users LIKE 'd%'
OR users LIKE 'M%' OR users LIKE 'D%' OR users LIKE 'A%';

12)SELECT first_name  FROM part4 WHERE country = 'Israel' OR followers=(SELECT MAX(followers) FROM part4);



-- . Выведите на экран всех пользователей у кого пустая почта.
-- 2. Посчитайте сколько пользователей у которых нет email живут на Chui.
-- 3. Покажите имена и номера телефонов всех людей которые работают как Web Developer
-- 4. У всех пользователей у которых почта ровняется False обновите почту на user@gmail.com.
-- 5. Узнайте из каких стран люди которые не имею работы(Unemployed).
-- 6. Везде где номер телефона начинается с 000 замените его любой РЕАЛЬНЫЙ номер в формате
-- столбца phone_number.
-- 7. 12345, user123б, qwerty считается лёгкими паролями у каждого пользователя у кого лёгкий
-- пароль удалите из Базы Данных.
-- 8. Выведите на экран email всех .NET Developer разработчиков и отсортируйте их по Имени.

1)SELECT * FROM part42 WHERE email IS NULL;

2)SELECT COUNT (*) FROM part42 WHERE country = 'China' AND email IS NULL;


3)SELECT first_name, phone_number  FROM part42 WHERE profession LIKE '%Developer%';

4)UPDATE part42 SET email = 'user@gmail.com' WHERE email = 'False';

5)SELECT country  FROM part42 WHERE profession IS NULL;

6)UPDATE part42 SET phone_number = '(555)196964' WHERE phone_number LIKE '(522)%' ;

7)DELETE FROM part42 WHERE password = '12345' OR password = 'user1236' OR password = 'qwerty';

8)SELECT email FROM part42 WHERE profession LIKE 'Developer%' ORDER BY first_name;




