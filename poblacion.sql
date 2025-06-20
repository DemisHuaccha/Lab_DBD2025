--Tabla de Metodos de pagos--
INSERT INTO Metodo_pago(id_metodo,nombre_metodo)
VALUES
	(1,'metodo1'),
	(2,'metodo2'),
	(3,'metodo3'),
	(4,'metodo4'),
	(5,'metodo5')
;

--Tabla de roles--

INSERT INTO Rol(id_rol,nombre_rol)
VALUES	
	(1,'Cliente'),
	(2,'Jefe_Tienda'),
	(3,'Administrador')
	;
	
--Tabla de Usuarios--
INSERT INTO Usuario(rut_user,correo,clave,id_rol,nombre,rut_user2)
VALUES
	('12.345.678-1','correo1@gmail.com','clave1',1,'nombre1','12.345.678-1'),
	('12.345.678-2','correo2@gmail.com','clave2',1,'nombre2','12.345.678-2'),
	('12.345.678-3','correo3@gmail.com','clave3',1,'nombre3','12.345.678-3'),
	('12.345.678-4','correo4@gmail.com','clave4',1,'nombre4','12.345.678-4'),
	('12.345.678-5','correo5@gmail.com','clave5',1,'nombre5','12.345.678-5'),
	('12.345.678-6','correo6@gmail.com','clave6',1,'nombre6','12.345.678-6'),
	('12.345.678-7','correo7@gmail.com','clave7',1,'nombre7','12.345.678-7'),
	('12.345.678-8','correo8@gmail.com','clave8',2,'nombre8','12.345.678-8'),
	('12.345.678-9','correo9@gmail.com','clave9',2,'nombre9','12.345.678-9'),
	('15.948.263-1','correo10@gmail.com','clave9',3,'nombre10','15.948.263-1')
	;

--Tabla de Boletas--

INSERT INTO Boleta(numero_boleta,fecha,id_metodo,rut_user)
VALUES
	(1,'2025-05-10',1,'12.345.678-1'),
	(2,'2025-04-10',2,'12.345.678-2'),
	(3,'2025-03-10',3,'12.345.678-3'),
	(4,'2025-02-10',2,'12.345.678-4'),
	(5,'2025-01-10',1,'12.345.678-5'),
	(6,'2024-12-10',2,'12.345.678-6'),
	(7,'2024-11-10',3,'12.345.678-7'),
	(8,'2024-10-10',2,'12.345.678-8'),
	(9,'2024-09-10',1,'12.345.678-9'),
	(10,'2024-08-10',3,'12.345.678-5')
;

--Tabla de Productos--
INSERT INTO Producto(id_producto, nombre_producto, descripcion, precio_producto, stock, cantidad_de_ventas, tipo_prod, imagen, rut_user)
VALUES
	(00101, 'Producto1', 'Descripcion', 20000, 05, 04, 1, 'imagen1', '12.345.678-8'),
	(00102, 'Producto2', 'Descripcion', 10000, 10, 10, 1, 'imagen2', '12.345.678-9'),
	(00103, 'Producto3', 'Descripcion', 80000, 02, 03, 1, 'imagen3', '12.345.678-8'),
	(00104, 'Producto4', 'Descripcion', 20000, 06, 04, 1, 'imagen4', '12.345.678-9'),
	(00105, 'Producto5', 'Descripcion', 10000, 10, 10, 1, 'imagen5', '12.345.678-8'),
	(00106, 'Producto6', 'Descripcion', 20000, 20, 06, 0, 'imagen6', '12.345.678-9'),
	(00107, 'Producto7', 'Descripcion', 20000, 20, 08, 0, 'imagen7', '12.345.678-8'),
	(00108, 'Producto8', 'Descripcion', 30000, 20, 10, 0, 'imagen8', '12.345.678-9'),
	(00109, 'Producto9', 'Descripcion', 30000, 20, 12, 0, 'imagen9', '12.345.678-8'),
	(00110, 'Producto10', 'Descripcion', 20000, 20, 15, 0, 'imagen10', '12.345.678-9')
;



-- Tabla cartas--
INSERT INTO Cartas(id_cartas, año, estado, rareza, id_producto) 
VALUES
	(101, '2000-01-01', 'bueno', 'raro', 00101),
	(102, '2000-02-01', 'deteriorado', 'comun', 00102),
	(103, '2001-03-15', 'perfecto', 'muy raro', 00103),
	(104, '2001-04-15', 'bueno', 'raro', 00104),
	(105, '2002-05-20', 'deteriorado', 'comun', 00105)
;

-- Tabla Juegos de Mesa--
INSERT INTO Juegos_de_Mesa(id_juegosM, Tipo ,id_Producto) 
VALUES
	(101, 'JuegoMesa1', 00106),
	(102, 'JuegoMesa2', 00107),
	(103, 'JuegoMesa3', 00108),
	(104, 'JuegoMesa4', 00109),
	(105, 'JuegoMesa5', 00110)
;
-- Tabla de Valoraciones
INSERT INTO Valoracion(id_valoracion, valoracion, comentario, id_producto, rut_user)
VALUES
    (1, 5, 'Excelente calidad',       101, '12.345.678-1'),
    (2, 3, 'Aceptable',                102, '12.345.678-2'),
    (3, 4, 'Me gustó mucho',           103, '12.345.678-3'),
    (4, 2, 'No cumple expectativas',   104, '12.345.678-4'),
    (5, 5, 'Totalmente recomendado',   105, '12.345.678-5'),
    (6, 1, 'Muy mala experiencia',     106, '12.345.678-6'),
    (7, 4, 'Bien en general',          107, '12.345.678-7'),
    (8, 5, 'Increíble producto',       108, '12.345.678-1'),
    (9, 3, 'Regular, cumple lo justo', 109, '12.345.678-2'),
    (10,4, 'Buen desempeño',           110, '12.345.678-3')
;

-- Tabla de Carrito
INSERT INTO Carrito(id_carrito, cantidad, id_producto, rut_user)
VALUES
    (1, 2, 101, '12.345.678-1'),
    (2, 1, 102, '12.345.678-2'),
    (3, 3, 103, '12.345.678-3'),
    (4, 1, 104, '12.345.678-4'),
    (5, 2, 105, '12.345.678-5'),
    (6, 1, 106, '12.345.678-6'),
    (7, 4, 107, '12.345.678-7'),
    (8, 2, 108, '12.345.678-1')
;

-- Tabla de Tiendas
INSERT INTO Tienda(id_tienda, nombre, rut_user)
VALUES
    (1, 'TiendaCentro', '12.345.678-8'),
    (2, 'TiendaNorte', '12.345.678-9'),
    (3, 'TiendaSur', '15.948.263-1')
;

-- Tabla Producto_Tienda
INSERT INTO Producto_Tienda(id_producto, id_tienda, cantidad)
VALUES
    (101, 1, 10),
    (102, 1,  5),
    (103, 1,  8),
    (104, 1, 12),
    (105, 2, 15),
    (106, 2,  7),
    (107, 2,  3),
    (108, 3, 20),
    (109, 3,  6),
    (110, 3,  9)
;

-- Tabla ListaDeseados
INSERT INTO ListaDeseados(id_listaDeseados, id_producto, rut_user, cantidad)
VALUES
    (1, 101, '12.345.678-1', 1),
    (2, 102, '12.345.678-2', 2),
    (3, 103, '12.345.678-3', 1),
    (4, 104, '12.345.678-4', 3),
    (5, 105, '12.345.678-5', 1),
    (6, 106, '12.345.678-6', 2),
    (7, 107, '12.345.678-7', 1),
    (8, 108, '12.345.678-1', 2)
;

-- Tabla direcciones acorde a usuarios--
INSERT INTO Direccion(numero, calle, region, rut_user,id_tienda) 
VALUES
	(101, 'Calle1', 'Region Metropolitana', '12.345.678-1', null),
	(102, 'Calle2', 'Valparaiso', '12.345.678-2', null),
	(103, 'Calle3', 'Biobio', '12.345.678-3', null),
	(104, 'Calle4', 'Araucania', '12.345.678-4', 3),
	(105, 'Calle5', 'Maule', '12.345.678-5', null),
	(106, 'Calle6', 'Nuble', '12.345.678-6', null),
	(107, 'Calle7', 'Coquimbo', '12.345.678-7', null),
	(108, 'Calle8', 'OHiggins', '12.345.678-8', 1),
	(109, 'Calle9', 'Atacama', '12.345.678-9', null),
	(110, 'Calle10', 'Los Lagos', '15.948.263-1', 2)
;