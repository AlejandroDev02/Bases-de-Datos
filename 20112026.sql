IF OBJECT_ID('dbo.Clientes') IS NOT NULL 
    DROP TABLE dbo.Clientes;

IF OBJECT_ID('dbo.sp_ConsultarTelefono') IS NOT NULL 
    DROP PROCEDURE dbo.sp_ConsultarTelefono;

CREATE TABLE dbo.Clientes (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50),
    Ciudad NVARCHAR(50),
    Telefono NVARCHAR(20)
);

INSERT INTO dbo.Clientes (Nombre, Ciudad, Telefono)
VALUES 
    ('Carlos Gómez', 'Medellín', '3001112233'),
    ('Laura Pérez', 'Bogotá', '3012223344'),
    ('Andrés López', 'Cali', '3023334455'),
    ('Armando Caceres', 'Cali', '3023638455'),
    ('Hernesto Cerpa', 'Barranquilla', '3023556702'),
    ('Sofía Ramírez', 'Medellín', '3045556677');
GO

CREATE PROCEDURE dbo.sp_Consultar
AS
BEGIN
    SELECT Ciudad, Telefono
    FROM dbo.Clientes
    ORDER BY Ciudad
END;
GO

ALTER PROCEDURE dbo.sp_Consultar
    @Ciudad VARCHAR(50)
AS
BEGIN
    SELECT Nombre
    FROM Clientes
    WHERE Ciudad = @Ciudad
    ORDER BY Ciudad
END;
GO

EXEC dbo.sp_Consultar @Ciudad = 'Medellín';