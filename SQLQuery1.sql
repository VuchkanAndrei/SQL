
-- 1. ���������� ������ ������� ���� ��� ����������. ������������� �� �����������.
SELECT
DISTINCT Izd
FROM books
ORDER BY Izd ASC 

-- 2. ���������� ����� �� ��������������� ����������� ����� � BHF
SELECT Name, Izd
FROM books
WHERE Name LIKE '%�������%' AND (Izd = '�����' OR Izd LIKE '%BHV%')

-- 3. ���������� ��� �����, � ������� ���������� ������� ����� � ��������� �� 200 �� 600
SELECT Name, Pages
FROM books
WHERE Pages BETWEEN 200 AND 600

-- 4. ���������� ��� �����, �������� ������� ������� ����� � ��������� �� ����� � �� �. ������������� ������� �� �����������
SELECT Name, Izd
FROM books
WHERE Izd LIKE '[�-�]%'
ORDER BY Izd ASC

-- 5. ������� ����� ����������� � ��������������� ��� ����� ������ � ������������ ������� �� ����� � �� �����
SELECT Name, Izd
FROM books
WHERE NOT Izd IN ('�����', '�����') 
AND (Name LIKE '%�������%' OR Name LIKE '%���%����%')

-- 6. ������� ������������ ������� � �������� ����� �� ����� 2 ���� � ��� ����������.  ��� ������� ����� ����????
SELECT DISTINCT Izd
FROM books
WHERE Izd LIKE '%��%'

-- 7. ������� ��� ������������ � �����, ������������ ������������� �� �����������, ����� �� ��������
SELECT Name, Izd
FROM books
ORDER BY Izd ASC, Name DESC

-- 8. ������� �� ������� �����, �������� ������� ���������� �� �����
SELECT Name, Izd
FROM books
WHERE Name LIKE '[0-9]%'

-- 9. ������� �� ������� �����, �������� ������� ������������� �� 4 �����
SELECT Name, Izd
FROM books
WHERE Name LIKE '%[0-9][0-9][0-9][0-9]'

-- 10. ������� �� ������� �����, � �������� ������� ����� 2 ����� ��� �������� �����, � ��� �����
SELECT Name, Izd
FROM books
WHERE Name LIKE '%[0-9]%[0-9]%'

-- 11. ������� �� ������� �����, ����� ������� �� ��������� 1000 �� � �� ����� 0, ������������� �� ����������� �������� ���
SELECT *
FROM books
WHERE Pressrun BETWEEN 1 AND 1000
ORDER BY Pressrun

-- 12. ������� �� ������� ����� �� ���������������, �� ����������� � ������������ DHV, � ��������� ������� ���� ����� Visual
SELECT Name, Izd
FROM books
WHERE NOT Izd LIKE '%BHV%' AND Name LIKE '%Visual%' AND Name LIKE '%�������%'
ORDER BY Izd

-- 13. ������� �� ������� ����� �� ��������������� ��� WEB-�������, ������� ��������� � ������������ DHV � �����
SELECT Name, Izd
FROM books
WHERE  (Izd LIKE '%BHV%' OR Izd LIKE '%�����%') AND (Name LIKE '%web%' OR Name LIKE '%�������%')
ORDER BY Izd

-- 14. ������� �� ������� ����� ���������� ������������ ��� ������������
SELECT Name, Izd
FROM books
WHERE   Name LIKE '%����������%' OR Name LIKE '%����������%'
ORDER BY Izd

-- 15. ������� �� ������� ����� �������� ������� ���������� �� ���������� �����
SELECT Name, Izd
FROM books
WHERE   Name LIKE '[a-z]%'
ORDER BY Name

-- 16. ������� �� ������� ����� �������� ������� ������������ �� ������� �����
SELECT Name, Izd
FROM books
WHERE   Name LIKE '%[�-�]'
ORDER BY Name

-- 17. ������� �� ������� ����� ������������ ������� ������� ����� �� ���� ��������
SELECT Name, Izd
FROM books
WHERE   Izd LIKE '___'
ORDER BY Name

-- 18. ������� �� ������� ����� �� ���������������� �� ����������� Pascal � Delphi
SELECT Name, Izd
FROM books
WHERE NOT (Name LIKE '%Pascal%' OR Name LIKE '%Delphi%') AND Name LIKE '%����������%'
ORDER BY Name



