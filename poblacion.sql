/* Tabla de Metodos de pagos*/
INSERT INTO Metodo_pago(id_metodo,nombre_metodo)
VALUES
	(1,'metodo1'),
	(2,'metodo2'),
	(3,'metodo3'),
	(4,'metodo4'),
	(5,'metodo5')
;

/* Tabla de roles*/
/*Temporal*/
INSERT INTO Rol(id_rol,nombre_rol)
VALUES	
	(1,'Cliente'),
	(2,'Jefe_Tienda'),
	(3,'Administrador')
	;
	
/*Tabla de Usuarios*/
/*Temporal*/
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

/*Tabla de Boletas*/

INSERT INTO Boleta(numero_boleta,fecha,id_metodo,rut_user)
VALUES
	(1,'2025-05-10',1,'12.345.678-1'),
	(2,'2025-05-10',2,'12.345.678-2'),
	(3,'2025-05-10',3,'12.345.678-3'),
	(4,'2025-05-10',2,'12.345.678-4'),
	(5,'2025-05-10',1,'12.345.678-5'),
	(6,'2025-05-10',2,'12.345.678-6'),
	(7,'2025-05-10',3,'12.345.678-7'),
	(8,'2025-05-10',2,'12.345.678-8'),
	(9,'2025-05-10',1,'12.345.678-9'),
	(10,'2025-05-10',3,'12.345.678-5')
;

-- Tabla direcciones acorde a usuarios--
INSERT INTO Direccion(numero, calle, region, rut_user) 
VALUES
	(101, 'Calle1', 'Región Metropolitana', '12.345.678-1'),
	(102, 'Calle2', 'Valparaíso', '12.345.678-2'),
	(103, 'Calle3', 'Biobío', '12.345.678-3'),
	(104, 'Calle4', 'Araucanía', '12.345.678-4'),
	(105, 'Calle5', 'Maule', '12.345.678-5'),
	(106, 'Calle6', 'Ñuble', '12.345.678-6'),
	(107, 'Calle7', 'Coquimbo', '12.345.678-7'),
	(108, 'Calle8', 'O’Higgins', '12.345.678-8'),
	(109, 'Calle9', 'Atacama', '12.345.678-9'),
	(110, 'Calle10', 'Los Lagos', '15.948.263-1')
;
