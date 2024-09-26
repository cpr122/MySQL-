
1. PRIMARY KEY: Define una columna como clave primaria, es decir, un identificador único para cada fila en la tabla.

Ejemplo:
``sql
CREATE TABLE usuarios (
id INT PRIMARY KEY,
nombre VARCHAR(50),
email VARCHAR(100)
);
```
2. FOREIGN KEY: Define una columna que hace referencia a la clave primaria de otra tabla.

Ejemplo:
```sql
CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  usuario_id INT,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
```
1. UNIQUE: Define una columna que debe contener valores únicos.

Ejemplo:
```
CREATE TABLE usuarios (
  id INT PRIMARY KEY,
  email VARCHAR(100) UNIQUE,
  nombre VARCHAR(50)
);
```
1. NOT NULL: Define una columna que no puede contener valores nulos.

Ejemplo:
```
CREATE TABLE usuarios (
  id INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  email VARCHAR(100)
);
```
1. CHECK: Define una condición que se debe cumplir para que un registro sea válido.

Ejemplo:
```
CREATE TABLE usuarios (
  id INT PRIMARY KEY,
  edad INT CHECK (edad >= 18),
  nombre VARCHAR(50)
);
```
1. DEFAULT: Define un valor predeterminado para una columna.

Ejemplo:
```
CREATE TABLE usuarios (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  pais VARCHAR(50) DEFAULT 'México'
);
```
1. INDEX: Crea un índice en una columna para mejorar la velocidad de búsqueda.

Ejemplo:
```
CREATE TABLE usuarios (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  email VARCHAR(100),
  INDEX (nombre)
);
```
