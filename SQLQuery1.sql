/*
Considering we're running a single script file, we cannot relly on the table being instanced beforehand
so we must consider the table already exist, we will always be instancing a new one for this query (the only trade-off
is that we have to insert our values again, there's no persistance)
*/
IF OBJECT_ID('Profesores') IS NOT NULL
	DROP TABLE Profesores;

CREATE TABLE Profesores(
	Id int,
	Nombre nvarchar(50) NOT NULL, /*PREVENT NOT NULL VALUES, DEFAULTS TO NULL ALLOWANCE*/
	Telefono int,
	primary key(Id)
);

PRINT('pre-insercion');

SELECT * FROM Profesores;

INSERT INTO dbo.Profesores(Id, Nombre, Telefono)VALUES
(1,'John Doe 1', 94234923),
(2,'John Doe 2', 94394389),
(3,'John Doe 3', 39434832),
(4,'Jane Doe', 34398894);

PRINT('post-insercion');

SELECT * FROM Profesores;

/*-Table -What column targets what action -Condition (who, in the column gets targeted by the action) */
UPDATE Profesores SET Id=10 WHERE Id>3;

SELECT * FROM Profesores;

/*lol test*/