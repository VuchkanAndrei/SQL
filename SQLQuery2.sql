USE booksSQL
GO
SELECT * FROM books

--1. ���������� ��� ������������, ������� ��������� ������� ����� 2000 �.

SELECT 
DISTINCT Izd
FROM books
WHERE FORMAT(Date,'yyyy.MM.dd')>'2000.12.31' AND New = 1

--2. ���������� �����, � ������� ���������� ������� ������, ��� ������� �������������� ����� ������� ���� ����

SELECT 
Name, Pages
FROM books
WHERE Pages >(SELECT AVG(Pages) FROM books)
ORDER BY Pages

--3. ���������� �������� � ����� ������� �� ���������, �������� ��� ���� ����� � ����� ����� 50

SELECT 
Themes, SUM(Pages) AS SummPages
FROM books
WHERE Price>50
GROUP BY Themes


 --4. ���������� ��� ���� � ������� �� ������� ���������

SELECT 
Themes, Category
FROM books
WHERE Category IS NULL
GROUP BY Themes, Category

--5. ���������� ����� ������� ����� ������������ BHV (2 �������)

SELECT TOP 1 *
FROM books
ORDER BY Price DESC

SELECT TOP 1 * 
FROM books
WHERE Price = (SELECT MAX(Price) FROM books)







-




