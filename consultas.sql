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

/*Consulta 6*/

/*Consulta 7*/
