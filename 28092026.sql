CREATE TABLE Test(
	Id int,
	Codebar int,
	Nombre nvarchar(50) not null,
	Cod_interno int identity(1000, 100), /*additional attribute from native data type, sets a value starting from the first argument augmenting to the second*/
	Precio int,
	Cantidad int
	primary key(Id, Codebar) /*composite PK*/
);

INSERT INTO Test VALUES
(1, 'Pan', 2000, 30);

SELECT * FROM Test;
