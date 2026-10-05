IF object_id('Mascotas') IS NOT NULL
	DROP TABLE Mascotas;

IF object_id('Propietarios') IS NOT NULL
	DROP TABLE Propietarios;

CREATE TABLE Mascotas(
	Id int identity(100,50),
	Nombre varchar(50) NOT NULL default 'Sin nombre',
	Raza nvarchar(20),
	Peso decimal(5,2) NOT NULL default 0,
	Id_propietario int,
	primary key(Id),

	/*-----------------------*/

	/*foregin key(Id_propietario) references Propietarios(Id_propietario)*/
);

CREATE TABLE Propietarios(
	Id_propietario int primary key,
	Nombre nvarchar(50),
);

INSERT INTO Propietarios(Id_propietario, Nombre) VALUES
(001, 'Alfredo'),
(002, 'Roberto');

ALTER TABLE Mascotas
	ADD CONSTRAINT fk_Mascotas_Propietarios /*constraint will prevent the FK holder to be dropped because there's a dependency*/
		FOREIGN KEY (Id_propietario) REFERENCES Propietarios(Id_propietario) /*Sets a table property as a foreign key referenced in its table of origin*/
			ON UPDATE CASCADE /*CASCADE = operate on both relatd tables*/
			ON DELETE CASCADE;

INSERT INTO Mascotas (Nombre, raza, Peso, Id_propietario) VALUES
(default, 'negrito', default, 001);

SELECT * FROM Mascotas;

INSERT INTO Mascotas DEFAULT VALUES;

SELECT * FROM Mascotas;
