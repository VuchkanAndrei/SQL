
-- 1. Отобразить список авторов книг без повторений. Отсортировать по возрастанию.
SELECT
DISTINCT Izd
FROM books
ORDER BY Izd ASC 

-- 2. Отобразить книги по програмированию издательств Питер и BHF
SELECT Name, Izd
FROM books
WHERE Name LIKE '%програм%' AND (Izd = 'Питер' OR Izd LIKE '%BHV%')

-- 3. Отобразить все книги, у которых количество страниц лежит в диапазоне от 200 до 600
SELECT Name, Pages
FROM books
WHERE Pages BETWEEN 200 AND 600

-- 4. Отобразить все книги, название изданий которых лежат в диапазоне от буквы В до О. Отсортировать издание по возрастанию
SELECT Name, Izd
FROM books
WHERE Izd LIKE '[В-О]%'
ORDER BY Izd ASC

-- 5. Выбрать книги относящиеся к програмированию или базам данных и издательства которых не Питер и не Бином
SELECT Name, Izd
FROM books
WHERE NOT Izd IN ('Питер', 'Бином') 
AND (Name LIKE '%програм%' OR Name LIKE '%баз%данн%')

-- 6. Выбрать издательства которых в названии имеют не менее 2 букв С без повторений.  Как вывести имена книг????
SELECT DISTINCT Izd
FROM books
WHERE Izd LIKE '%сс%'

-- 7. Выбрать все издательства и книги, издательства отсортировать по возрастанию, книги по убыванию
SELECT Name, Izd
FROM books
ORDER BY Izd ASC, Name DESC

-- 8. Выбрать из таблицы книги, названия которых начинаются на цифры
SELECT Name, Izd
FROM books
WHERE Name LIKE '[0-9]%'

-- 9. Выбрать из таблицы книги, названия которых заканчиваются на 4 цифры
SELECT Name, Izd
FROM books
WHERE Name LIKE '%[0-9][0-9][0-9][0-9]'

-- 10. Выбрать из таблицы книги, в названия которых ровно 2 цифры Как вывенсти цифры, а нен числа
SELECT Name, Izd
FROM books
WHERE Name LIKE '%[0-9]%[0-9]%'

-- 11. Выбрать из таблицы книги, тираж которых не превышает 1000 шт и не равен 0, отвортировать по возрастанию Придумал сам
SELECT *
FROM books
WHERE Pressrun BETWEEN 1 AND 1000
ORDER BY Pressrun

-- 12. Выбрать из таблицы книги по програмирования, не относящиеся к издательству DHV, в названиях которых есть слово Visual
SELECT Name, Izd
FROM books
WHERE NOT Izd LIKE '%BHV%' AND Name LIKE '%Visual%' AND Name LIKE '%програм%'
ORDER BY Izd

-- 13. Выбрать из таблицы книги по програмированию или WEB-дизайну, которые относятся к издательству DHV и Бином
SELECT Name, Izd
FROM books
WHERE  (Izd LIKE '%BHV%' OR Izd LIKE '%Бином%') AND (Name LIKE '%web%' OR Name LIKE '%програм%')
ORDER BY Izd

-- 14. Выбрать из таблицы книги являющиеся справочником или руководством
SELECT Name, Izd
FROM books
WHERE   Name LIKE '%справочник%' OR Name LIKE '%руководств%'
ORDER BY Izd

-- 15. Выбрать из таблицы книги названия которых начинаются на английскую букву
SELECT Name, Izd
FROM books
WHERE   Name LIKE '[a-z]%'
ORDER BY Name

-- 16. Выбрать из таблицы книги названия которых заканчиваютс на русскую букву
SELECT Name, Izd
FROM books
WHERE   Name LIKE '%[а-я]'
ORDER BY Name

-- 17. Выбрать из таблицы книги издательства которых состоят ровно из трех символов
SELECT Name, Izd
FROM books
WHERE   Izd LIKE '___'
ORDER BY Name

-- 18. Выбрать из таблицы книги по программированию за исключением Pascal и Delphi
SELECT Name, Izd
FROM books
WHERE NOT (Name LIKE '%Pascal%' OR Name LIKE '%Delphi%') AND Name LIKE '%программир%'
ORDER BY Name



