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

-- La creación de estas tablas se basa en el MR
CREATE TABLE IF NOT EXISTS Producto (
  id_producto SERIAL PRIMARY KEY,
  nombre_producto VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255),
  precio_producto INT CHECK (precio_producto >= 0),
  stock INT CHECK (stock >= 0),
  cantidad_de_ventas INT DEFAULT 0 CHECK (cantidad_de_ventas >= 0),
  tipo_prod INT,
  imagen VARCHAR(255),
  rut_user VARCHAR(15),
  FOREIGN KEY (rut_user) REFERENCES Usuario(rut_user)
);

CREATE TABLE IF NOT EXISTS Valoracion (
  id_valoracion SERIAL PRIMARY KEY,
  valoracion INT CHECK (valoracion BETWEEN 1 AND 5),
  comentario VARCHAR(255),
  id_producto INT,
  rut_user VARCHAR(15),
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
  FOREIGN KEY (rut_user) REFERENCES Usuario(rut_user)
);

-- Aquí añadí una FK con producto pero esto NO ESTÁ EN EL MR!!! Es que nadie respondió mi duda en el documento
CREATE TABLE IF NOT EXISTS Carrito (
  id_carrito SERIAL PRIMARY KEY,
  cantidad INT CHECK (cantidad > 0),
  id_producto INT,
  rut_user VARCHAR(15),
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
  FOREIGN KEY (rut_user) REFERENCES Usuario(rut_user)
);

-- Tabla Cartas
CREATE TABLE IF NOT EXISTS Cartas (
    id_cartas SERIAL PRIMARY KEY,
    Año INTEGER,
    Estado VARCHAR(30),
    Rareza VARCHAR(20),
    id_producto INTEGER,
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

-- Tabla Juegos_de_Mesa
CREATE TABLE IF NOT EXISTS Juegos_de_Mesa (
    id_juegosM SERIAL PRIMARY KEY,
    Tipo VARCHAR(30),
    id_producto INTEGER,
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

-- Tabla Direccion
CREATE TABLE IF NOT EXISTS Direccion (
    id_direccion SERIAL PRIMARY KEY,
    numero INTEGER,
    calle VARCHAR(50),
    region VARCHAR(50),
    rut_user VARCHAR(15),
    FOREIGN KEY (rut_user) REFERENCES Usuario(rut_user)
--FALTA FK DE TIENDA 
);

-- Tabla Tienda
CREATE TABLE Tienda (
  id_tienda SERIAL PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  rut_user VARCHAR(15) NOT NULL,
  FOREIGN KEY (rut_user) REFERENCES Usuario(rut_user)

);

-- Tabla Producto_Tienda 
CREATE TABLE Producto_Tienda (
    id_producto INTEGER NOT NULL,
    id_tienda INTEGER NOT NULL,
    cantidad INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY (id_producto, id_tienda),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda)
);

-- Tabla ListaDeseados
CREATE TABLE ListaDeseados (
    id_listaDeseados SERIAL PRIMARY KEY,
    id_producto INTEGER NOT NULL,
    rut_user VARCHAR(15) NOT NULL,
    cantidad INTEGER NOT NULL DEFAULT 1,
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
    FOREIGN KEY (rut_user) REFERENCES Usuario(rut_user)
);