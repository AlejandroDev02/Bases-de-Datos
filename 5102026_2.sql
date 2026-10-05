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
('Moby Dick', 'Herman Malville', 'Oveja Negra', 12, 75000),
('EL hombre en busqueda de sentido', default, 'Santillana', 24, 55000),
('Harry Potter', 'J.K Rowlling', 'Planeta', 54, 19000),
('El hombre que calculaba', 'Malba Tahas', 'Santillana', 15, 7000),
('Cien años de soledad', 'Gabriel Garcia Marquez', 'Oveja Negra', 10, 100000),
('Historia de un secuestro', 'German Castro', 'Planeta', 3, 45000);