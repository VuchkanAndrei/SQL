USE booksSQL
GO
SELECT * FROM books

--1. Отобразить все издательства, которые выпустили новинки после 2000 г.

SELECT 
DISTINCT Izd
FROM books
WHERE FORMAT(Date,'yyyy.MM.dd')>'2000.12.31' AND New = 1

--2. Отобразить книги, у которых количество страниц больше, чем среднее арифмитическое числа страниц всех книг

SELECT 
Name, Pages
FROM books
WHERE Pages >(SELECT AVG(Pages) FROM books)
ORDER BY Pages

--3. Отобразить тематику и сумму страниц по тематикам, учитывая при этом книги с ценой более 50

SELECT 
Themes, SUM(Pages) AS SummPages
FROM books
WHERE Price>50
GROUP BY Themes


 --4. Отобразить все темы у которых не указана категория

SELECT 
Themes, Category
FROM books
WHERE Category IS NULL
GROUP BY Themes, Category

--5. Отобразить самую дорогую книгу издательства BHV (2 способа)

SELECT TOP 1 *
FROM books
ORDER BY Price DESC

SELECT TOP 1 * 
FROM books
WHERE Price = (SELECT MAX(Price) FROM books)







-




