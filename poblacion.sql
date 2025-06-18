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
INSERT INTO Usuario(rut_user,correo,clave,id_rol,nombre,rut_administrador)
VALUES
	('12345678-1','correo1@gmail.com','clave1',1,'nombre1','15948263-1'),
	('12345678-2','correo2@gmail.com','clave2',1,'nombre2','15948263-1'),
	('12345678-3','correo3@gmail.com','clave3',1,'nombre3','15948263-1'),
	('12345678-4','correo4@gmail.com','clave4',1,'nombre4','15948263-1'),
	('12345678-5','correo5@gmail.com','clave5',1,'nombre5','15948263-1'),
	('12345678-6','correo6@gmail.com','clave6',1,'nombre6','15948263-1'),
	('12345678-7','correo7@gmail.com','clave7',1,'nombre7','15948263-1'),
	('12345678-8','correo8@gmail.com','clave8',2,'nombre8','15948263-1'),
	('12345678-9','correo9@gmail.com','clave9',2,'nombre9','15948263-1'),
	('15948263-1','correo10@gmail.com','clave9',3,'nombre10','15948263-1')
	;
