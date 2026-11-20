IF OBJECT_ID('dbo.Productos') IS NOT NULL 
    DROP TABLE dbo.Productos;

IF OBJECT_ID('dbo.sp_PromedioPorSeccion') IS NOT NULL 
    DROP PROCEDURE dbo.sp_ConsultarTelefono;

CREATE TABLE dbo.Productos (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50),
    Precio decimal(10,2),
    Seccion NVARCHAR(50),
);

INSERT INTO dbo.Productos (Nombre, Precio, Seccion)
VALUES 
    ('Leche', 4500, 'Lacteos'),
    ('Queso', 5000, 'Lacteos'),
    ('Yogurt', 12000, 'Lacteos'),
    ('Pan Tajado', 7000, 'Panaderia'),
    ('Rollo', 12000, 'Panaderia'),
    ('Pera', 2000, 'Panaderia'),
    ('Salchicha Ranchera', 30000, 'Carnes Frias'),
    ('Mortaela', 15000, 'Carnes Frias'),
    ('Jamon', 25000, 'Carnes Frias');
GO

CREATE PROCEDURE dbo.sp_PromedioPorSeccion
    @Seccion NVARCHAR(50),
    @Promedio decimal(10,2) OUTPUT
AS
    BEGIN
        SELECT @Promedio = AVG(Precio)
        FROM dbo.Productos
        WHERE Seccion = @Seccion
    END;
GO

DECLARE @ProcedimientoLol decimal(10, 2); /*CREATE VARIABLE*/ /*FREE-CHOICE NAME*/
EXEC dbo.sp_PromedioPorSeccion 'Lacteos', @ProcedimientoLol OUTPUT /*FILL VARIABLE*/
SELECT @ProcedimientoLol AS 'Promedio Producto'; /*DISPLAY VARIABLE*/
