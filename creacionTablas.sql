CREATE TABLE IF NOT EXISTS Metodo_pago (
	id_metodo SERIAL PRIMARY KEY,
	nombre_metodo VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Rol (
	id_rol INTEGER PRIMARY KEY,
	nombre_rol  VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Usuario (
	rut_user VARCHAR(15) PRIMARY KEY,
	correo VARCHAR(30) NOT NULL UNIQUE,
	clave  VARCHAR(30) NOT NULL,
	id_rol INTEGER NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	rut_user2 VARCHAR(15),
	CONSTRAINT fk_Usuario_Rol FOREIGN KEY(id_rol) REFERENCES Rol(id_rol)
);

ALTER TABLE Usuario 
ADD FOREIGN KEY (rut_user2) REFERENCES Usuario(rut_user); 

CREATE TABLE IF NOT EXISTS Boleta( 
	numero_boleta SERIAL PRIMARY KEY,
	fecha DATE NOT NULL,
	id_metodo SERIAL,
	rut_user VARCHAR(15),
	CONSTRAINT fk_Boleta_Usuario FOREIGN KEY (rut_user) REFERENCES Usuario(rut_user),
	FOREIGN KEY (id_metodo) REFERENCES Metodo_pago(id_metodo)
);
