IF OBJECT_ID('Test') IS NOT NULL
	DROP TABLE Test;

/*IDENTITY ATTRIBUTE*/

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
(1, 24039, 'Pan', 2000, 30);

INSERT INTO Test VALUES
(1, 24040, 'Galletas', 2000, 30);

SET IDENTITY_INSERT Test OFF;

INSERT INTO Test VALUES
(10, 24039, 'Pan', 2000, 30);

INSERT INTO Test VALUES
(20, 24040, 'Galletas', 2000, 30);

exec sp_columns Test; /*display nullable columns per table*/

select IDENT_SEED('Test'); /*what id does this table start at*/

SELECT * FROM Test;

TRUNCATE TABLE Test; /*unlike drop, truncate sweeps off any values stored on memory, i.e, Identity IDS will reset from starting point*/

SELECT * FROM Test;


/*ALIASES*/


INSERT INTO Test VALUES
(1, 24039, 'Pan', 2000, 30);

INSERT INTO Test VALUES
(1, 24040, 'Galletas', 2000, 30);

SELECT Id as 'Identity', Nombre, (Cantidad * Precio) as Calculo FROM Test; /*Column nickname on display, in-line cross-column operations*/

/*ORDER BY*/

/*given a large data set, we can sort it out (default orders)*/

TRUNCATE TABLE Test;

INSERT INTO Test VALUES (1, 24039, 'Pan', 2000, 30);
INSERT INTO Test VALUES (2, 35012, 'Leche', 1500, 48);
INSERT INTO Test VALUES (3, 48701, 'Huevos', 300, 120);
INSERT INTO Test VALUES (4, 56123, 'Queso', 3200, 25);
INSERT INTO Test VALUES (5, 40298, 'Arroz', 900, 80);
INSERT INTO Test VALUES (6, 27544, 'Azúcar', 700, 60);
INSERT INTO Test VALUES (7, 19987, 'Sal', 150, 200);
INSERT INTO Test VALUES (8, 78321, 'Aceite', 4500, 40);
INSERT INTO Test VALUES (9, 66990, 'Harina', 850, 70);
INSERT INTO Test VALUES (10, 55812, 'Mantequilla', 2600, 22);
INSERT INTO Test VALUES (11, 44433, 'Café', 3200, 55);
INSERT INTO Test VALUES (12, 33120, 'Té', 1200, 65);
INSERT INTO Test VALUES (13, 71234, 'Jabón', 600, 90);
INSERT INTO Test VALUES (14, 82145, 'Shampoo', 1800, 45);
INSERT INTO Test VALUES (15, 93456, 'Pasta', 950, 100);
INSERT INTO Test VALUES (16, 14678, 'Tomate', 400, 150);
INSERT INTO Test VALUES (17, 25789, 'Cebolla', 350, 140);
INSERT INTO Test VALUES (18, 36890, 'Manzana', 300, 130);
INSERT INTO Test VALUES (19, 47901, 'Plátano', 200, 160);
INSERT INTO Test VALUES (20, 58012, 'Naranja', 250, 110);
INSERT INTO Test VALUES (21, 69123, 'Pollo', 5200, 35);
INSERT INTO Test VALUES (22, 70234, 'Carne', 7800, 28);
INSERT INTO Test VALUES (23, 81345, 'Pescado', 6100, 18);
INSERT INTO Test VALUES (24, 92456, 'Yogur', 700, 75);
INSERT INTO Test VALUES (25, 13579, 'Cereal', 2400, 33);
INSERT INTO Test VALUES (26, 24680, 'Galletas', 1100, 95);
INSERT INTO Test VALUES (27, 35791, 'Chocolate', 1900, 50);
INSERT INTO Test VALUES (28, 46802, 'Agua', 300, 180);
INSERT INTO Test VALUES (29, 57913, 'Refresco', 900, 120);
INSERT INTO Test VALUES (30, 68024, 'Vino', 12000, 12);

SELECT * FROM Test ORDER BY Precio; /*default sort (asc)*/

SELECT * FROM Test ORDER BY Precio desc; 

SELECT * FROM TEST ORDER BY 5; /*when unspecified name, order by ennumerates each column, 5=Cantidad*/

/*reminder = * placeholder for n column names separated by comma*/