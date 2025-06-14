CREATE TABLE IF NOT EXISTS Metodo_pago (
  id_metodo INTEGER PRIMARY KEY,
  nombre_metodo VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Rol (
  id_rol INTEGER PRIMARY KEY,
  nombre_rol  VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Usuario (
  rut_user INTEGER PRIMARY KEY,
  correo VARCHAR(30) NOT NULL UNIQUE,
  clave  VARCHAR(30) NOT NULL,
  id_rol INTEGER NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  /*rut_adminitstrador INTEGER,*/
  CONSTRAINT fk_Usuario_Rol FOREIGN KEY(id_rol) REFERENCES Rol(id_rol)
);

/* Revisar Relacion Actualizar para determinar que esto esta correcto */
/*
ALTER TABLE Usuario 
ADD CONSTRAINT fk_Usuario_Usuario 
FOREIGN KEY (rut_administrador) REFERENCES Usuario(rut_user); 
*/