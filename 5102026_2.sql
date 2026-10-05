IF OBJECT_ID('Libros') IS NOT NULL
	DROP TABLE Libros;

CREATE TABLE Libros(
	Id int identity,
	Nombre nvarchar(50) NOT NULL,
	Autor nvarchar(50) NOT NULL default 'Anonimo',
	Editorial nvarchar(50),
	Cantidad int NOT NULL default 0,
	Precio decimal (10,2),
	primary key (Id)
);

INSERT INTO Libros VALUES
('Moby Dick', 'Herman Malville', 'Santillana', 12, 75000),
('EL hombre en busqueda de sentido', default, 'Oveja Negra', 24, 55000),
('Harry Potter', 'J.K Rowlling', 'Planeta', 54, 19000),
('El hombre que calculaba', 'Malba Tahas', 'Santillana', 15, 7000),
('Cien años de soledad', 'Gabriel Garcia Marquez', 'Oveja Negra', 10, 100000),
('Historia de un secuestro', 'German Castro', 'Planeta', 3, 45000);

/*COUNT() retorna cantidades en la capacidad de int, COUNT_BIG() retorna cantidades de tipo bigint*/

/*count_big(*) counts including null values or duplicated*/
/*count_big(field) counts only non-null values*/

SELECT COUNT(*)  /*specifying a field will make this return only its non-null logs*/
	FROM Libros
	WHERE Editorial = 'Santillana';

SELECT COUNT(*)
	FROM Libros
	WHERE Editorial = 'Oveja Negra';

SELECT COUNT(*)
	FROM Libros
	WHERE Editorial = 'Planeta';

/*count() counts*/
/*min & max both for numeric and string tpye*/
/*sum & avg only num types*/

SELECT SUM(Cantidad)
FROM Libros;

SELECT MAX(Precio)
FROM Libros;

SELECT MIN(Precio)
FROM Libros;

SELECT AVG(Precio)
FROM Libros;

/*LIKE FUNCTION*/
/*LIKE 'EL%' Starts with EL*/
/*LIKE '%EL' Ends with EL*/
/*LIKE '%EL%' EL on any position*/
/*LIKE 'EL' Exactly EL*/

SELECT MIN(Precio)
	FROM Libros
	WHERE Nombre LIKE 'EL%';

SELECT Editorial, COUNT(*) /*select all values from this field*/
	FROM Libros
	GROUP BY Editorial; /*Displays the counted rows gruped by repeated values from the specified fields (we can group by multiple fields separated by comma)*/

SELECT Editorial, Autor, SUM(Precio)
	FROM Libros
	GROUP BY Editorial, Autor;

SELECT Editorial, /*WE CAN ADD MULTIPLE AGGERGATE FUNCTIONS*/
	MAX(Precio) as 'Mayor',
	MIN(Precio) as 'Menor'
	FROM Libros
	GROUP BY Editorial;

SELECT Editorial, COUNT(*)
	FROM Libros
	WHERE Precio <= 30000
	GROUP BY ALL Editorial /*Display all even if they do not meet the condition, they will still display as 0*/
	