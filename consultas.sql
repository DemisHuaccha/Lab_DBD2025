/*Consulta 1*/
SELECT setval(
  'public.carrito_id_carrito_seq',
  (SELECT MAX(id_carrito) FROM Carrito)
);
-- Agregar una carta al carrito
INSERT INTO Carrito(cantidad, id_producto, rut_user)
VALUES (1, 00105, '12.345.678-1'); 

-- Agregar un juego de mesa al carrito
INSERT INTO Carrito(cantidad, id_producto, rut_user)
VALUES (1, 00106, '12.345.678-1');

/*Consulta 2*/
-- Eliminar una carta de carrito
DELETE FROM Carrito
WHERE id_producto = 00105 AND rut_user = '12.345.678-1';

/*Consulta 3*/
-- Mostrar los juegos de mesa / cartas del carrito de compras
SELECT p.nombre_producto, 'Carta' AS tipo_producto, p.precio_producto, c.cantidad 
FROM Carrito c
JOIN Producto p ON c.id_producto = p.id_producto
JOIN Cartas ca ON p.id_producto = ca.id_producto
WHERE c.rut_user = '12.345.678-1'

UNION

SELECT p.nombre_producto, 'Juego de Mesa' AS tipo_producto, p.precio_producto, c.cantidad
FROM Carrito c
JOIN Producto p ON c.id_producto = p.id_producto
JOIN Juegos_de_Mesa jm ON p.id_producto = jm.id_producto
WHERE c.rut_user = '12.345.678-1';

/*Consulta 4*/
-- Mostrar el precio total a pagar por el carrito de compras.
SELECT SUM(c.cantidad * p.precio_producto) AS total_a_pagar
FROM Carrito c
JOIN Producto p ON c.id_producto = p.id_producto
WHERE c.rut_user = '12.345.678-1';

/*Consulta 5*/
-- Mostrar todos los juegos de mesa y cartas que se vendan en una ubicacion geografica especifica.
SELECT p.id_producto, p.nombre_producto, p.descripcion, p.precio_producto, d.region, t.nombre AS tienda
FROM Producto p JOIN Cartas c ON p.id_producto = c.id_producto JOIN Producto_Tienda pt ON p.id_producto = pt.id_producto 
JOIN Tienda t ON pt.id_tienda = t.id_tienda JOIN Usuario u ON t.rut_user = u.rut_user JOIN Direccion d ON u.rut_user = d.rut_user
WHERE d.region = 'OHiggins';

/*Consulta 6*/
-- Mostrar ranking de los productos con mas ventas.
SELECT 
	p.id_producto,
	p.nombre_producto,
	p.cantidad_de_ventas,
	p.precio_producto,
	p.tipo_prod,
	CASE
		WHEN p.tipo_prod = 1 THEN 'Juego de mesa'
		WHEN p.tipo_prod = 0 THEN 'Carta'
		ELSE 'Otro'
	END AS tipo_producto_desc
FROM Producto p
ORDER BY p.cantidad_de_ventas DESC
LIMIT 10;

/*Consulta 7*/
-- Mostrar lista de deseos de un usuario.
SELECT
	u.nombre AS usuario,
	p.nombre_producto,
	p.precio_producto,
	l.cantidad,
	(p.precio_producto * l.cantidad) AS precio_total,
	CASE
		WHEN p.tipo_prod = 1 THEN 'Juego de Mesa'
		WHEN p.tipo_prod = 0 THEN 'Carta'
		ELSE 'Otro'
	END AS tipo_producto
FROM ListaDeseados l
JOIN Usuario u ON l.rut_user = u.rut_user
JOIN Producto p ON l.id_producto = p.id_producto
WHERE l.rut_user = '12.345.678-1'
ORDER BY l.id_listaDeseados;
