-- Crear la base de datos
CREATE DATABASE Inventario;
USE Inventario;
GO
-- Tabla Productos
CREATE TABLE Productos 
(
    ID INT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(100),
    precio DECIMAL(10,2),
    cantidad INT,
    categoria VARCHAR(30)
)

-- Tabla Proveedores 
CREATE TABLE Proveedores 
(
    ID INT PRIMARY KEY, 
    nombre VARCHAR(50), 
    direccion VARCHAR(120) , 
    telefono VARCHAR(15)
)

-- Tabla Pedidos con clave for�nea 
-- Crear tabla Pedido
CREATE TABLE Pedido
( 
    ID INT PRIMARY KEY, 
    fecha DATE,
    cliente VARCHAR(35),
    producto_id INT,
    CONSTRAINT fk_Productos FOREIGN KEY (producto_id) REFERENCES Productos(ID)
);

			-- Inserci�n de productos en la {tabla Productos}

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (1, 'Monitor', 'Monitor LED ', 1000, 20, 'Electr�nica');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (2, 'Teclado', 'Teclado mec�nico ', 75.00, 30, 'Accesorios');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (3, 'Tablet', 'Tablet Android ', 300.00, 15, 'Electr�nica');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (4, 'Impresora', 'Impresora multifuncional', 150.00, 10, 'Oficina');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (5, 'C�mara', 'C�mara digital 4K', 500.00, 8, 'Electr�nica');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (6, 'Smartwatch', 'Reloj inteligente resistente al agua', 200.00, 25, 'Tecnolog�a');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (7, 'Router', 'Router WiFi de alta velocidad', 100.00, 12, 'Redes');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (8, 'Disco Duro', 'Disco duro externo de 1TB', 85.00, 40, 'Almacenamiento');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (9, 'SSD', 'Unidad SSD de 512GB', 120.00, 35, 'Almacenamiento');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (10, 'Auriculares', 'Auriculares inal�mbricos con cancelaci�n de ruido', 180.00, 50, 'Audio');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (11, 'Micr�fono', 'Micr�fono condensador USB', 150.00, 18, 'Audio');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (12, 'Silla Gamer', 'Silla ergon�mica para gaming', 220.00, 5, 'Mobiliario');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (13, 'Smart TV', 'Televisor inteligente de 50 pulgadas', 700.00, 7, 'Electr�nica');

INSERT INTO Productos (ID, nombre, descripcion, precio, cantidad, categoria) 
VALUES (14, 'Power Bank', 'Bater�a port�til de 20,000mAh', 60.00, 60, 'Accesorios');
--						--				--
select * from Productos

---------------Tabla 2------------------------------
INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(1, 'Distribuidora El Sol', 'Calle Principal 123, San Jos�', '506-2222-1234');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(2, 'Comercial del Norte', 'Avenida Central, Alajuela', '506-2433-5678');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(3, 'Productos del Valle', 'Ruta 27, Escaz�', '506-2100-9876');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(4, 'Importadora Alfa', 'Boulevard Central, Cartago', '506-2555-6543');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(5, 'Global Distribuciones', 'Parque Industrial Heredia', '506-2601-9988');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(6, 'Mercantil Beta', 'Zona Franca Coyol, Alajuela', '506-2703-1100');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(7, 'Distribuidora Omega', 'Calle 45, Lim�n', '506-2790-1234');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(8, 'Suministros Delta', 'Sector Este, Heredia', '506-2234-5567');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(9, 'Proveedores Gamma', 'Barrio Los �ngeles, Cartago', '506-2655-8899');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(10, 'Electro S.A.', 'Zona Industrial Oeste, San Jos�', '506-2789-3344');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(11, 'Alimentos San Juan', 'Frente al Mall Escaz�', '506-2444-7788');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(12, 'Comercial del Este', 'Boulevard Moravia, San Jos�', '506-2211-9987');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(13, 'Distribuciones Sure�as', 'Barrio Sur, San Isidro', '506-2777-5566');

INSERT INTO Proveedores (ID, Nombre, Direccion, Telefono)
VALUES(14, 'Suministros Pura Vida', 'Plaza Comercial Tib�s', '506-2299-6677');


Select * from Proveedores 

--------------------Datos tabla 3--------------------------------------------------

-- Insertar datos en la tabla Pedido
INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (1, '2025-01-01', 'Juan P�rez', 1);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (2, '2025-01-02', 'Mar�a G�mez', 2);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (3, '2025-01-03', 'Carlos L�pez', 3);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (4, '2025-01-04', 'Ana Rodr�guez', 4);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (5, '2025-01-05', 'Pedro Mart�nez', 5);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (6, '2025-01-06', 'Luisa S�nchez', 1);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (7, '2025-01-07', 'Miguel Torres', 2);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (8, '2025-01-08', 'Sof�a D�az', 3);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (9, '2025-01-09', 'Ra�l Herrera', 4);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (10, '2025-01-10', 'Paula Fern�ndez', 5);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (11, '2025-01-11', 'Ricardo Ruiz', 1);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (12, '2025-01-12', 'Elena Gonz�lez', 2);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (13, '2025-01-13', 'Tom�s Jim�nez', 3);

INSERT INTO Pedidos (ID, fecha, cliente, producto_id) 
VALUES (14, '2025-01-14', 'Beatriz Garc�a', 4);

-- Consultar datos de la tabla Pedido
SELECT * FROM Pedidos;

---Modificar un producto--------

UPDATE Productos SET precio = 1000.00 WHERE ID = 1;

--Eliminaci�n de Datos:-Por posicion o codigo-------------

DELETE FROM Productos WHERE ID = 5;

--Consultas SELECT:---

SELECT * FROM Productos WHERE precio > 1000; -- seleciona los precios menores a 1000 de la tabla productos 
SELECT AVG(precio) FROM Productos; -- Calcula el promedio de los precio en toda la tabla de productos
SELECT p.nombre, s.nombre FROM Productos p 
INNER JOIN Proveedores s ON p.proveedor_id = s.ID;


--Pregunta 1 1
--�Cu�les son los 5 productos m�s vendidos?

SELECT producto_id, COUNT(*) AS total_pedidos
FROM Pedidos
GROUP BY producto_id;


---2--- join y sum �Cu�l es el proveedor(nombre) con m�s productos(prodcutos/cantidad) en inventario?

SELECT p.nombre AS Proveedor, SUM(prod.cantidad) AS Total_Productos
FROM Proveedores p
JOIN Productos prod ON p.ID = prod.proveedor_id
GROUP BY p.nombre
ORDER BY Total_Productos DESC; --esto no me funciona porque no encuentro 
--como hacer relacion estre ellos, y si lo cambio no puedo porque 1 es string y el otro int

--3 �Cu�l es el valor total del inventario? (Hint: SUM y precio * cantidad) 

SELECT SUM(precio * cantidad) AS total_inventario
FROM productos --me faltaba * pero lo resolvi 

--4. �Cu�ntos pedidos se realizaron en el �ltimo mes? (Hint: WHERE con fecha)

SELECT COUNT(*) AS pedidos_ultimo_mes
FROM pedidos
WHERE fecha >= DATEADD(MONTH, -1, GETDATE());

--5�Cu�les son los clientes que han realizado m�s pedidos? (Hint: GROUP BY y COUNT)

SELECT cliente, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY cliente
ORDER BY total_pedidos DESC;
				--si "Funciona" pero en la tabla de resultados me sale que todos compraron 1 vez
--pero no se como modificarlo o asi

--6. �Cu�l es el producto m�s vendido en cada categor�a? (Hint: GROUP BY y MAX)

SELECT p.categoria, p.nombre, MAX(cantidad) AS max_cantidad
FROM Productos p
JOIN Pedidos pd ON p.ID = pd.producto_id
GROUP BY p.categoria, p.nombre
ORDER BY p.categoria, max_cantidad DESC;

--7	�Qu� proveedores tienen un promedio de precio por producto m�s bajo? (Hint: JOIN, 
--GROUP BY, y AVG) 

SELECT pr.nombre, AVG(p.precio) AS promedio_precio
FROM Productos p
JOIN Proveedores pr ON  = pr.ID
GROUP BY pr.nombre
ORDER BY promedio_precio ASC;
	
--tengo aca un problema no me funciono 

--8�Cu�les son los productos que se han agotado en el �ltimo trimestre? (Hint: WHERE con 
--fecha y cantidad = 0) 

SELECT p.nombre, p.categoria, p.precio, p.cantidad, pd.fecha
FROM Productos p
JOIN Pedidos pd ON p.ID = pd.producto_id
WHERE p.cantidad = 0
AND pd.fecha >= DATEADD(QUARTER, -1, GETDATE())  -- �ltimo trimestre
ORDER BY pd.fecha DESC 
 
--						:(		:(   :(
--De las preguntas de investigacion me faltaron realizar y darle una correcta resolucion a las
--preguntas 2,5,7 y 8			:(		:(   :(