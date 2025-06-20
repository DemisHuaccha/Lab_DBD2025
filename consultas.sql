/*Consulta 1*/
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

/*Consulta 4*/

/*Consulta 5*/
SELECT p.id_producto, p.nombre_producto, p.descripcion, p.precio_producto, d.region, t.nombre AS tienda
FROM Producto p JOIN Cartas c ON p.id_producto = c.id_producto JOIN Producto_Tienda pt ON p.id_producto = pt.id_producto 
JOIN Tienda t ON pt.id_tienda = t.id_tienda JOIN Usuario u ON t.rut_user = u.rut_user JOIN Direccion d ON u.rut_user = d.rut_user
WHERE d.region = 'OHiggins';

/*Consulta 6*/

/*Consulta 7*/
