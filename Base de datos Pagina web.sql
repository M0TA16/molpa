create database PaginaWeb; 
use PaginaWeb;
CREATE TABLE cliente (
id_cliente int NOT NULL AUTO_INCREMENT,
Nombre varchar(200),
Correo varchar(200),
Telefono int, 
PRIMARY KEY (id_cliente)
);

CREATE TABLE producto (
id_producto int NOT NULL AUTO_INCREMENT, 
Nombre varchar(200),
Precio DECIMAL(10,2),
Disponibilidad varchar (200),
PRIMARY KEY (id_producto)
);


CREATE TABLE categoria (
id_categoria int NOT NULL AUTO_INCREMENT,
nombre_categoría VARCHAR (200),
PRIMARY KEY (id_categoria)
);

CREATE TABLE producto_categoria (
    id_producto int,
    id_categoria INT
);

-- Agregar llaves foraneas
ALTER TABLE producto_categoria 
ADD CONSTRAINT fk_producto_relacion
FOREIGN KEY (id_producto) REFERENCES producto(id_producto);

ALTER TABLE producto_categoria 
ADD CONSTRAINT fk_categoria_relacion
FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);