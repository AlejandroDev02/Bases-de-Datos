IF OBJECT_ID('productos') IS NOT NULL
	DROP TABLE productos;

CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    seccion VARCHAR(50) NOT NULL,
    distribuidor VARCHAR(100) NOT NULL
);


INSERT INTO productos 
(id, nombre, cantidad, precio, categoria, seccion, distribuidor)
VALUES
(1, 'Leche Entera', 35, 4500, 'Bebidas', 'Lacteos', 'Colanta'),
(2, 'Yogur Natural', 20, 3800, 'Alimentos', 'Lacteos', 'Alpina'),
(3, 'Queso Mozzarella', 15, 12500, 'Alimentos', 'Lacteos', 'Colanta'),
(4, 'Mantequilla', 12, 8900, 'Alimentos', 'Lacteos', 'Alpina'),
(5, 'Kumis', 18, 4200, 'Bebidas', 'Lacteos', 'Alqueria'),
(6, 'Arroz Blanco', 50, 5200, 'Granos', 'Abarrotes', 'Diana'),
(7, 'Frijol Rojo', 30, 7800, 'Granos', 'Abarrotes', 'Diana'),
(8, 'Lentejas', 25, 4900, 'Granos', 'Abarrotes', 'La Muneca'),
(9, 'Aceite Vegetal', 22, 11500, 'Aceites', 'Abarrotes', 'Premier'),
(10, 'Azucar', 40, 4300, 'Endulzantes', 'Abarrotes', 'Manuelita'),
(11, 'Manzana Roja', 28, 3200, 'Frutas', 'Frutas y Verduras', 'Frescampo'),
(12, 'Banano', 45, 1800, 'Frutas', 'Frutas y Verduras', 'Frescampo'),
(13, 'Tomate', 32, 2900, 'Verduras', 'Frutas y Verduras', 'Agroverde'),
(14, 'Zanahoria', 38, 2100, 'Verduras', 'Frutas y Verduras', 'Agroverde'),
(15, 'Papa', 60, 2500, 'Verduras', 'Frutas y Verduras', 'Frescampo'),
(16, 'Galletas de Chocolate', 24, 3600, 'Snacks', 'Dulces y Snacks', 'Noel'),
(17, 'Papas Fritas', 30, 4200, 'Snacks', 'Dulces y Snacks', 'Margarita'),
(18, 'Chocolate', 16, 6500, 'Dulces', 'Dulces y Snacks', 'Nacional de Chocolates'),
(19, 'Detergente', 14, 13500, 'Limpieza', 'Aseo', 'Familia'),
(20, 'Jabon Liquido', 10, 9800, 'Limpieza', 'Aseo', 'Familia');

SELECT COUNT(*)
    FROM Productos
    WHERE seccion = 'Lacteos'

SELECT distribuidor, count(*)
    FROM Productos
    GROUP BY distribuidor

SELECT categoria, seccion, sum(Cantidad)
    FROM Productos
    GROUP BY categoria, seccion

SELECT seccion,
    MIN(precio) as 'Minimo',
    MAX(precio) as 'Maximo'
    FROM Productos
    GROUP BY seccion

SELECT categoria, AVG(precio) as 'Promedio'
    FROM Productos
    GROUP BY categoria

