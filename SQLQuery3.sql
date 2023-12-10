--Таблицы 
--1. Кафедры (Departments)
--- Идентификатор (Id). Уникальный идентификатор кафедры.
--Тип данных — int.
--Авто приращение. 
--Не может содержать null-значения. 
--Первичный ключ
--- Финансирование (Financing). Фонд финансирования кафедры.
--Тип данных — money. 
--Не может содержать null-значения.
--Не может быть меньше 0. 
--Значение по умолчанию — 0. 
--- Название (Name). Название кафедры. 
--Тип данных — nvarchar(100). 
--Не может содержать null-значения. 
--Не может быть пустым. 
--Должно быть уникальным. 

CREATE TABLE Departments 
(
Id INT PRIMARY KEY IDENTITY NOT NULL,
Financing MONEY NOT NULL DEFAULT(0), 
[Name] NVARCHAR(100) NOT NULL

CONSTRAINT UQ_Departments_Name UNIQUE([Name]),
CONSTRAINT CK_Departments_Name CHECK([Name]!=' '),
CONSTRAINT CK_Departments_Financing CHECK(Financing>=0)
)

DELETE Departments

insert into Departments  (Financing, Name) values ('$1464.30', 'Ecole Supérieure d''Informatique-Electronique-Automatique');
insert into Departments  (Financing, Name) values ('$2554.14', 'National University of Theater and Film Arts');
insert into Departments  (Financing, Name) values ('$3943.39', 'National Law School of India University');
insert into Departments  (Financing, Name) values ('$3020.00', 'University of Fiji');
insert into Departments  (Financing, Name) values ('$2845.61', 'William Penn College');
insert into Departments  (Financing, Name) values ('$1241.89', 'Iceland University of Education');
insert into Departments  (Financing, Name) values ('$1005.99', 'Indian Institute of Technology, Roorkee');
insert into Departments  (Financing, Name) values ('$477.94', 'Medizinische Universität Wien');
insert into Departments  (Financing, Name) values ('$2923.53', 'Open Polytechnic ');
insert into Departments  (Financing, Name) values ('$2391.86', 'Universidad de Oriente');
insert into Departments  (Financing, Name) values ('$2197.36', 'Oradea University');
insert into Departments  (Financing, Name) values ('$4438.68', 'University of Eldoret');
insert into Departments  (Financing, Name) values ('$74.11', 'Fujita Health University');
insert into Departments  (Financing, Name) values ('$3633.97', 'College of Technology at Jeddah');
insert into Departments  (Financing, Name) values ('$3854.04', 'University of North Carolina at Greensboro');
insert into Departments  (Financing, Name) values ('$2318.42', 'Western Kentucky University');
insert into Departments  (Financing, Name) values ('$2530.53', 'Medical University of South Carolina');
insert into Departments  (Financing, Name) values ('$958.20', 'Kyungil University');
insert into Departments  (Financing, Name) values ('$4573.56', 'Technical University of Poznan');
insert into Departments  (Financing, Name) values ('$1344.85', 'St. Peter''s College');
insert into Departments  (Financing, Name) values ('$475.62', 'Dr. YS Parmar University of Horticulture and Forestry');
insert into Departments  (Financing, Name) values ('$4049.61', 'Bangabandhu Sheikh Mujibur Rahman Medical University');
insert into Departments  (Financing, Name) values ('$1916.30', 'University of Architecture, Civil Engineering and Geodesy');
insert into Departments  (Financing, Name) values ('$629.98', 'Augustana College');
insert into Departments  (Financing, Name) values ('$4367.47', 'Palm Beach State College');
insert into Departments  (Financing, Name) values ('$4899.84', 'Private Fachhochschule für Wirtschaft und Technik Vechta/Diepholz');
insert into Departments  (Financing, Name) values ('$1890.49', 'AGH University of Science and Technology');
insert into Departments  (Financing, Name) values ('$2111.92', 'University of Munawwar-ul-Islam');
insert into Departments  (Financing, Name) values ('$4655.02', 'Murray State University');
insert into Departments  (Financing, Name) values ('$3175.59', 'Dallas Christian College');
insert into Departments  (Financing, Name) values ('$905.91', 'Free University "Maria Santissima Assunta"');
insert into Departments  (Financing, Name) values ('$4026.93', 'University of Mississippi');
insert into Departments  (Financing, Name) values ('$3620.63', 'Inchon University');
insert into Departments  (Financing, Name) values ('$1830.17', 'Thomas Jefferson University');
insert into Departments  (Financing, Name) values ('$652.26', 'Norwegian School of Management BI');
insert into Departments  (Financing, Name) values ('$3887.99', 'Kutztown University of Pennsylvania');
insert into Departments  (Financing, Name) values ('$81.89', 'Shenyang Pharmaceutical University');
insert into Departments  (Financing, Name) values ('$832.95', 'Southern Polytechnic State Univerisity');
insert into Departments  (Financing, Name) values ('$386.56', 'Jimma University');
insert into Departments  (Financing, Name) values ('$124.52', 'Ecole Spéciale de Mécanique et d''Electricité');
insert into Departments  (Financing, Name) values ('$1759.22', 'Université Blaise Pascal (Clermont-Ferrand II)');
insert into Departments  (Financing, Name) values ('$3493.05', 'Dar al Hekma College');
insert into Departments  (Financing, Name) values ('$2489.40', 'Instituto Superior de Entre Douro e Vouga');
insert into Departments  (Financing, Name) values ('$2530.50', 'Helsinki School of Economics and Business Administration');
insert into Departments  (Financing, Name) values ('$201.60', 'Foundation University');
insert into Departments  (Financing, Name) values ('$4430.20', 'College in Sládkovičovo');
insert into Departments  (Financing, Name) values ('$2047.95', 'Fachhochschule Heidelberg');
insert into Departments  (Financing, Name) values ('$2411.37', 'International Centre for Isclamic Science');
insert into Departments  (Financing, Name) values ('$3523.95', 'Donetsk State Medical University');
insert into Departments  (Financing, Name) values ('$1999.17', 'Tokiwa University');

SELECT * FROM Departments



--2. Факультеты (Faculties) 
--- Идентификатор (Id). Уникальный идентификатор факультета. 
--Тип данных — int. 
--Авто приращение. 
--Не может содержать null-значения. 
--Первичный ключ.
--- Декан (Dean). Декан факультета.
--Тип данных — nvarchar(max). 
--Не может содержать null-значения. 
--Не может быть пустым. 
--- Название (Name). Название факультета. 
--Тип данных — nvarchar(100). 
--Не может содержать null-значения. 
--Не может быть пустым. 
--Должно быть уникальным.

CREATE TABLE Faculties 
(
Id INT PRIMARY KEY IDENTITY NOT NULL,
Dean NVARCHAR(max) NOT NULL,
[Name] NVARCHAR(100) NOT NULL


CONSTRAINT UQ_Faculties_Name UNIQUE([Name]),
CONSTRAINT CK_Faculties_Dean CHECK(Dean!=' '),
CONSTRAINT CK_Faculties_Name CHECK([Name]!=' '),

)

insert into Faculties  (Dean, Name) values ('Ducroe', 'Ooba');
insert into Faculties  (Dean, Name) values ('Tingcomb', 'Yotz');
insert into Faculties  (Dean, Name) values ('Kneesha', 'Jaxworks');
insert into Faculties  (Dean, Name) values ('Mellanby', 'Eadel');
insert into Faculties  (Dean, Name) values ('Winpenny', 'Yozio');
insert into Faculties  (Dean, Name) values ('Gresch', 'Npath');
insert into Faculties  (Dean, Name) values ('Jubert', 'Twitterbridge');
insert into Faculties  (Dean, Name) values ('Dearle-Palser', 'Jaxbean');
insert into Faculties  (Dean, Name) values ('Simonnet', 'Riffpath');
insert into Faculties  (Dean, Name) values ('Resdale', 'Yoveo');
insert into Faculties  (Dean, Name) values ('Spacey', 'Topiclounge');
insert into Faculties  (Dean, Name) values ('Hartridge', 'Jayo');
insert into Faculties  (Dean, Name) values ('Say', 'Topdrive');
insert into Faculties  (Dean, Name) values ('Hakking', 'Photobug');
insert into Faculties  (Dean, Name) values ('Szymoni', 'Leenti');
insert into Faculties  (Dean, Name) values ('Zettoi', 'Quimm');
insert into Faculties  (Dean, Name) values ('Mucklestone', 'Omba');
insert into Faculties  (Dean, Name) values ('Hurling', 'Feedfire');
insert into Faculties  (Dean, Name) values ('Connaughton', 'Layo');
insert into Faculties  (Dean, Name) values ('Diggin', 'Yakijo');
insert into Faculties  (Dean, Name) values ('Pascow', 'Meezzy');
insert into Faculties  (Dean, Name) values ('Oris', 'Youtags');
insert into Faculties  (Dean, Name) values ('Anscombe', 'Eimbee');
insert into Faculties  (Dean, Name) values ('Tourot', 'Topiclounge');
insert into Faculties  (Dean, Name) values ('Millsom', 'Innotype');
insert into Faculties  (Dean, Name) values ('Dmitrichenko', 'Brainsphere');
insert into Faculties  (Dean, Name) values ('Applegarth', 'Abata');
insert into Faculties  (Dean, Name) values ('Antoniutti', 'Reallinks');
insert into Faculties  (Dean, Name) values ('Erangy', 'Devcast');
insert into Faculties  (Dean, Name) values ('Zuppa', 'Wordify');
insert into Faculties  (Dean, Name) values ('Bretton', 'Jaxbean');
insert into Faculties  (Dean, Name) values ('Sheldrick', 'Flashspan');
insert into Faculties  (Dean, Name) values ('Murdoch', 'Tagfeed');
insert into Faculties  (Dean, Name) values ('Skyppe', 'Ntag');
insert into Faculties  (Dean, Name) values ('Geaves', 'Kamba');
insert into Faculties  (Dean, Name) values ('Abrahamian', 'Tagopia');
insert into Faculties  (Dean, Name) values ('Fayer', 'Realpoint');
insert into Faculties  (Dean, Name) values ('Kroger', 'Blogpad');
insert into Faculties  (Dean, Name) values ('Cashen', 'InnoZ');
insert into Faculties  (Dean, Name) values ('Bathoe', 'Skyvu');
insert into Faculties  (Dean, Name) values ('Faill', 'Reallinks');
insert into Faculties  (Dean, Name) values ('Godlee', 'Pixoboo');
insert into Faculties  (Dean, Name) values ('Attwoul', 'Snaptags');
insert into Faculties  (Dean, Name) values ('Hoodless', 'Aimbu');
insert into Faculties  (Dean, Name) values ('Glascott', 'Cogidoo');
insert into Faculties  (Dean, Name) values ('Poizer', 'Thoughtstorm');
insert into Faculties  (Dean, Name) values ('Heading', 'Innojam');
insert into Faculties  (Dean, Name) values ('Mattaus', 'Skippad');
insert into Faculties  (Dean, Name) values ('Sprionghall', 'Blogtags');
insert into Faculties  (Dean, Name) values ('Le Provest', 'Skilith');

SELECT * FROM Faculties

--3. Группы (Groups) 
--- Идентификатор (Id). Уникальный идентификатор группы. 
--Тип данных — int. 
--Авто приращение. 
--Не может содержать null-значения. 
--Первичный ключ. 
--- Название (Name). Название группы.
--Тип данных — nvarchar(10). 
--Не может содержать null-значения. 
--Не может быть пустым. 
--Должно быть уникальным. 
--- Рейтинг (Rating). Рейтинг группы. 
--Тип данных — int. 
--Не может содержать null-значения. 
--Должно быть в диапазоне от 0 до 5. 
--- Курс (Year). Курс (год) на котором обучается группа. 
--Тип данных — int. 
--Не может содержать null-значения. 
--Должно быть в диапазоне от 1 до 5. 

CREATE TABLE Groups 
(
Id INT PRIMARY KEY IDENTITY NOT NULL,
[Name] NVARCHAR(10) NOT NULL,
Rating INT NOT NULL,
[Year] INT NOT NULL,


CONSTRAINT UQ_Groups_Name UNIQUE([Name]),
CONSTRAINT CK_Groups_Rating CHECK(Rating>=0 AND Rating<=5),
CONSTRAINT CK_Groups_Year CHECK([Year]>=1 AND [Year]<=5),
CONSTRAINT CK_Groups_Name CHECK([Name]!=' '),

)

insert into Groups (Name, Rating, Year) values ('Photospace', 1, 4);
insert into Groups (Name, Rating, Year) values ('Aivee', 5, 4);
insert into Groups (Name, Rating, Year) values ('Myn', 3, 3);
insert into Groups (Name, Rating, Year) values ('Feedfish', 2, 3);
insert into Groups (Name, Rating, Year) values ('Voonix', 2, 3);
insert into Groups (Name, Rating, Year) values ('Wikizz', 2, 5);
insert into Groups (Name, Rating, Year) values ('Eare', 1, 1);
insert into Groups (Name, Rating, Year) values ('Jaxspan', 5, 3);
insert into Groups (Name, Rating, Year) values ('Twitter', 0, 4);
insert into Groups (Name, Rating, Year) values ('Oyonder', 1, 2);
insert into Groups (Name, Rating, Year) values ('Rhycero', 0, 2);
insert into Groups (Name, Rating, Year) values ('Roombo', 1, 3);
insert into Groups (Name, Rating, Year) values ('Camimbo', 4, 3);
insert into Groups (Name, Rating, Year) values ('Latz', 0, 4);
insert into Groups (Name, Rating, Year) values ('Miboo', 5, 2);
insert into Groups (Name, Rating, Year) values ('Tag', 0, 4);
insert into Groups (Name, Rating, Year) values ('Brainverse', 4, 5);
insert into Groups (Name, Rating, Year) values ('Dabfeed', 0, 2);
insert into Groups (Name, Rating, Year) values ('Twimm', 0, 1);
insert into Groups (Name, Rating, Year) values ('Aiv', 0, 2);
insert into Groups (Name, Rating, Year) values ('Demivee', 0, 2);
insert into Groups (Name, Rating, Year) values ('Tazz', 5, 1);
insert into Groups (Name, Rating, Year) values ('Kamba', 5, 3);
insert into Groups (Name, Rating, Year) values ('Pixoboo', 4, 3);
insert into Groups (Name, Rating, Year) values ('Bluejam', 3, 5);
insert into Groups (Name, Rating, Year) values ('Pixope', 0, 3);
insert into Groups (Name, Rating, Year) values ('Photofeed', 0, 3);
insert into Groups (Name, Rating, Year) values ('Tagtune', 5, 2);
insert into Groups (Name, Rating, Year) values ('Yodoo', 4, 2);
insert into Groups (Name, Rating, Year) values ('Lajo', 5, 1);
insert into Groups (Name, Rating, Year) values ('Devcast', 0, 5);
insert into Groups (Name, Rating, Year) values ('Realblab', 1, 4);
insert into Groups (Name, Rating, Year) values ('Skajo', 3, 5);
insert into Groups (Name, Rating, Year) values ('Lazz', 3, 4);
insert into Groups (Name, Rating, Year) values ('Linkbridge', 5, 2);
insert into Groups (Name, Rating, Year) values ('Brainbox', 2, 3);
insert into Groups (Name, Rating, Year) values ('Voomm', 4, 4);
insert into Groups (Name, Rating, Year) values ('Realmix', 3, 2);
insert into Groups (Name, Rating, Year) values ('Leexo', 2, 1);
insert into Groups (Name, Rating, Year) values ('Youtags', 4, 3);
insert into Groups (Name, Rating, Year) values ('Gabspot', 4, 1);
insert into Groups (Name, Rating, Year) values ('Mynte', 3, 1);
insert into Groups (Name, Rating, Year) values ('Trilia', 3, 3);
insert into Groups (Name, Rating, Year) values ('Jayo', 4, 1);
insert into Groups (Name, Rating, Year) values ('Flashspan', 4, 4);
insert into Groups (Name, Rating, Year) values ('Trudoo', 4, 1);
insert into Groups (Name, Rating, Year) values ('Eadel', 2, 1);
insert into Groups (Name, Rating, Year) values ('Quinu', 4, 3);
insert into Groups (Name, Rating, Year) values ('Dazzl', 4, 3);
insert into Groups (Name, Rating, Year) values ('Meembee', 2, 1);
DELETE Groups

SELECT * FROM Groups



--4. Преподаватели (Teachers) 
--- Идентификатор (Id). Уникальный идентификатор преподавателя. 
--Тип данных — int. 
--Авто приращение. 
--Не может содержать null-значения. 
--Первичный ключ.
--- Дата трудоустройства (EmploymentDate). Дата приема преподавателя на работу. 
--Тип данных — date. ▷ Не может содержать null-значения. 
--Не может быть меньше 01.01.1990.
--- Ассистент (IsAssistant). Является ли преподаватель ассистентом. 
--Тип данных — bit. 
--Не может содержать null-значения. 
--Значение по умолчанию — 0. 
--- Профессор (IsProfessor). Является ли преподаватель профессором. 
--Тип данных — bit. 
--Не может содержать null-значения. 
--Значение по умолчанию — 0. 
--- Имя (Name). Имя преподавателя. 
--Тип данных — nvarchar(max). 
--Не может содержать null-значения. 
--Не может быть пустым. 
--- Должность (Position). Должность преподавателя. 
--Тип данных — nvarchar(max). 
--Не может содержать null-значения. 
--Не может быть пустым. 
--- Надбавка (Premium). Надбавка преподавателя. 
--Тип данных — money. 
--Не может содержать null-значения
--Не может быть меньше 0. 
--Значение по умолчанию — 0. 
--- Ставка (Salary). Ставка преподавателя. 
--Тип данных — money. 
--Не может содержать null-значения. 
--Не может быть меньше либо равно 0. 
--- Фамилия (Surname). Фамилия преподавателя. 
--Тип данных — nvarchar(max). 
--Не может содержать null-значения. 
--Не может быть пустым.

CREATE TABLE Teachers 
(
Id INT PRIMARY KEY IDENTITY NOT NULL,
EmploymentDate DATE NOT NULL,
IsAssistant BIT DEFAULT(0) NOT NULL, 
IsProfessor BIT DEFAULT(0) NOT NULL,
[Name] NVARCHAR(max) NOT NULL,
Premium MONEY DEFAULT(0) NOT NULL,
Salary MONEY DEFAULT(0) NOT NULL,
Surname NVARCHAR(max) NOT NULL,

CONSTRAINT CK_Teachers_EmploymentDate CHECK(EmploymentDate>'1990-01-01'),
CONSTRAINT CK_Teachers_Name CHECK([Name]!=''),
CONSTRAINT CK_Teachers_Premium CHECK(Premium>=0),
CONSTRAINT CK_Teachers_Salary CHECK(Salary>0),
CONSTRAINT CK_Teachers_Surname CHECK(Surname!=''),
)


insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2015-01-16', 1, 0, 'Adam', '$3395.06', '$7850.74', 'Celli');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1992-01-11', 1, 1, 'Noreen', '$2378.04', '$8530.13', 'Khosa');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2010-04-18', 0, 0, 'Karl', '$2864.69', '$8695.74', 'Zohrer');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2011-09-21', 0, 1, 'Paloma', '$4552.76', '$9738.97', 'Tattersfield');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2017-09-02', 1, 1, 'Stuart', '$3150.63', '$6692.72', 'Schiersch');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2001-06-05', 0, 0, 'Kathlin', '$3804.86', '$7843.13', 'Butts');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2015-06-19', 1, 1, 'Carita', '$2212.14', '$7645.06', 'Bree');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2023-12-08', 1, 0, 'Norry', '$3284.15', '$9933.00', 'Hagyard');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2020-11-09', 1, 0, 'Ginger', '$3165.87', '$5445.04', 'Headly');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1999-06-06', 1, 0, 'Lorne', '$2231.83', '$7930.92', 'Bateson');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2019-09-10', 1, 1, 'Dela', '$3703.80', '$6433.01', 'Sellick');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1993-05-16', 0, 1, 'Roy', '$2482.51', '$7067.67', 'Bakeup');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2007-10-09', 0, 0, 'Roarke', '$2634.50', '$8227.87', 'Meiklejohn');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1990-06-27', 0, 1, 'Dana', '$2357.04', '$6012.90', 'Fanthom');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2013-07-31', 0, 1, 'Dave', '$2137.10', '$8629.23', 'Eyrl');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1994-06-30', 1, 0, 'Modestine', '$2404.75', '$8680.38', 'Penhallurick');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1996-03-17', 1, 0, 'Oates', '$3180.88', '$9231.65', 'Anney');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2010-03-22', 1, 0, 'Webb', '$3498.84', '$6858.15', 'Saur');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2015-02-19', 1, 1, 'Nanice', '$4751.40', '$6445.14', 'MacCawley');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1993-12-09', 0, 1, 'Cicely', '$3300.80', '$5735.50', 'Fogden');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1998-07-12', 1, 0, 'Cynthia', '$3977.52', '$6789.87', 'Capini');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2001-09-29', 0, 1, 'Koralle', '$4643.37', '$9343.04', 'Croxley');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2007-09-30', 0, 1, 'Amos', '$2693.70', '$7647.45', 'Piccard');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2005-11-18', 1, 1, 'Nannette', '$4826.37', '$8239.62', 'Kindon');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2020-09-15', 1, 1, 'Bradney', '$2607.72', '$6412.91', 'Stollhofer');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1999-11-02', 1, 1, 'Constantin', '$2681.41', '$5148.77', 'Gorgler');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1990-01-17', 0, 1, 'Noam', '$4800.68', '$9464.62', 'Amsden');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1999-02-24', 0, 1, 'Sherman', '$2835.01', '$6339.22', 'Acott');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2011-02-27', 1, 0, 'Fredi', '$4206.40', '$7970.80', 'Mardee');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1996-02-23', 0, 0, 'Basile', '$4819.76', '$9822.37', 'Lamping');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2021-12-01', 0, 1, 'Nanine', '$4124.94', '$8329.79', 'Coady');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2020-07-13', 1, 0, 'Adam', '$4514.53', '$6724.08', 'Caghan');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2009-10-05', 0, 0, 'Cortie', '$3313.62', '$6731.91', 'Statton');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2014-06-11', 0, 1, 'Cirstoforo', '$3584.44', '$9112.06', 'Tortoise');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2000-12-18', 0, 1, 'Mattias', '$3958.22', '$6630.63', 'Yewdell');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1990-05-08', 0, 0, 'Eugine', '$2624.32', '$8843.25', 'Awcock');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2019-09-25', 0, 0, 'Rafaelita', '$2867.18', '$7680.20', 'Pyer');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2020-08-10', 0, 0, 'Payton', '$4990.47', '$5483.62', 'Sell');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2004-02-26', 0, 1, 'Fayre', '$3877.95', '$9141.92', 'Burrass');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2016-09-01', 1, 0, 'Maryellen', '$2837.39', '$7470.99', 'Thay');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2019-06-04', 1, 1, 'Cherri', '$4717.08', '$8070.65', 'Swyre');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1999-11-11', 0, 1, 'Merl', '$2032.40', '$9101.36', 'Barajaz');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2019-04-05', 1, 1, 'Elden', '$2947.28', '$8210.09', 'Dreschler');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1999-03-21', 1, 1, 'Alvan', '$3432.11', '$5812.85', 'Laboune');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1993-12-12', 1, 1, 'Elianore', '$4711.55', '$9624.28', 'Bernhart');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1994-03-02', 1, 0, 'Guthrie', '$4484.74', '$8309.64', 'Valeri');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2001-09-01', 1, 1, 'Marianne', '$4815.26', '$9607.05', 'Crown');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('1997-08-21', 0, 0, 'Brad', '$2253.42', '$6185.47', 'Pepys');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2004-02-16', 1, 1, 'Ailene', '$4205.68', '$9104.12', 'Najafian');
insert into Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Premium, Salary, Surname) values ('2011-06-21', 0, 1, 'Leland', '$3884.73', '$5106.54', 'Gallo');


--Задания
--1. Вывести таблицу кафедр, но расположить ее поля в обратном порядке.
SELECT * FROM Departments 
SELECT Name, Financing, Id FROM Departments

--2. Вывести названия групп и их рейтинги, используя в качестве названий выводимых полей “Group Name” и “Group Rating” соответственно.
SELECT * FROM Groups
SELECT Name AS 'Group Name', Rating AS 'Group Rating' FROM Groups

--3. Вывести для преподавателей их фамилию, процент ставки по отношению к надбавке и процент ставки по отношению к зарплате (сумма ставки и надбавки).
SELECT * FROM Teachers
SELECT Surname, Salary/Premium*100 AS 'Salary/Premium %', Salary/(Premium+Salary)*100 AS 'Salary/(Premium+Salary) %' FROM Teachers

--4. Вывести таблицу факультетов в виде одного поля в следующем формате: “The dean of faculty [faculty] is [dean].”.
SELECT * FROM Faculties
SELECT 'The dean of faculty '+ Name + ' is '+ Dean FROM Faculties

--5. Вывести фамилии преподавателей, которые являются профессорами и ставка которых превышает 5000.
SELECT * FROM Teachers
SELECT Surname, IsProfessor, Salary FROM Teachers
WHERE IsProfessor=1 AND Salary>5000
ORDER BY Salary

--6. Вывести названия кафедр, фонд финансирования которых меньше 1100 или больше 2500.
SELECT * FROM Departments
SELECT Name, Financing FROM Departments
WHERE Financing NOT BETWEEN 1100 AND 2500  
ORDER BY Financing

--7. Вывести названия факультетов кроме факультета “Omba”.
SELECT * FROM Faculties
SELECT Name FROM Faculties
WHERE Name NOT LIKE '%Omba%'

--8. Вывести фамилии и должности преподавателей, которые не являются профессорами.
SELECT * FROM Teachers
SELECT Surname, IsProfessor FROM Teachers
WHERE IsProfessor=0 

--9. Вывести фамилии, должности, ставки и надбавки ассистентов, у которых надбавка в диапазоне от 2000 до 3000.
SELECT * FROM Teachers
SELECT Surname, IsAssistant, Salary, Premium FROM Teachers
WHERE IsAssistant=1 AND Premium BETWEEN  2000 AND 3000
ORDER BY Premium

--10.Вывести фамилии и ставки ассистентов.
SELECT Surname, IsAssistant, Salary FROM Teachers
WHERE IsAssistant=1 
ORDER BY Salary

--11.Вывести фамилии и должности преподавателей, которые были приняты на работу до 01.01.2000.
SELECT * FROM Teachers
SELECT Surname, IsAssistant, IsProfessor, EmploymentDate FROM Teachers
WHERE EmploymentDate<'2000.01.01'
ORDER BY EmploymentDate

--12.Вывести названия кафедр, которые в алфавитном порядке располагаются до кафедры “Medizinische Universitat Wien”. Выводимое поле должно иметь название “Name of Department”.
SELECT * FROM Departments
SELECT Name FROM Departments
WHERE NAME < 'Medizinische Universitat Wien'
ORDER BY Name

--13.Вывести фамилии ассистентов, имеющих зарплату (сумма ставки и надбавки) не более 12000.
SELECT * FROM Teachers
SELECT Surname, IsAssistant, Salary+Premium AS 'SUM Salary Premium' FROM Teachers
WHERE (Salary+Premium)<12000 AND IsAssistant=1
ORDER BY (Salary+Premium)

--14.Вывести названия групп 5-го курса, имеющих рейтинг в диапазоне от 2 до 4.
SELECT * FROM Groups
SELECT Name, Year, Rating FROM Groups
WHERE Year=5 AND Rating BETWEEN 2 AND 4
ORDER BY Rating

--15.Вывести фамилии ассистентов со ставкой меньше 5500 или надбавкой меньше 2000.
SELECT * FROM Teachers
SELECT Surname, IsAssistant, Salary, Premium FROM Teachers
WHERE (Salary<5500 OR Premium<2000) AND IsAssistant=1
ORDER BY Salary