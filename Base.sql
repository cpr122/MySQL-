
#table creation 
CREATE TABLE clientes (
id_cliente INT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
telefono VARCHAR(20)
);
-- table creation
CREATE TABLE pedidos (
id_pedido INT PRIMARY KEY,
id_cliente INT NOT NULL,
fecha_pedido DATE NOT NULL,
total DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
--table cration
CREATE TABLE productos (
id_producto INT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
descripcion TEXT,
precio DECIMAL(10, 2) NOT NULL,
existencias INT NOT NULL
);
---table cration
CREATE TABLE detalles_pedido (
id_detalle INT PRIMARY KEY,
id_pedido INT NOT NULL,
id_producto INT NOT NULL,
cantidad INT NOT NULL,
precio DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
FOREIGN KEY (id_producto) REFERENCES productos(id_profucto));
