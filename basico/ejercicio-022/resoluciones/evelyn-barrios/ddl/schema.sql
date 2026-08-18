-- Campuslands MySQL - basico ejercicio 022
-- Ejecuta este archivo antes de inserts.sql.
-- Ejecutar este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS basico_ejercicio_022;
-- Eliminar tablas si existen para asegurar un estado limpio
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS productos;

CREATE TABLE basico_ejercicio_022 (
-- Tabla para almacenar la información de los productos
CREATE TABLE productos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  categoria VARCHAR(80) NOT NULL,
  puntaje DECIMAL(10,2) NOT NULL DEFAULT 0,
  estado ENUM('activo','revision','inactivo') NOT NULL DEFAULT 'activo',
  nombre VARCHAR(255) NOT NULL UNIQUE,
  descripcion TEXT,
  precio DECIMAL(10,2) NOT NULL CHECK (precio > 0), -- Restricción: el precio debe ser un valor positivo
  stock INT NOT NULL CHECK (stock >= 0), -- Restricción: el stock no puede ser negativo
  estado ENUM('disponible', 'agotado', 'descontinuado') NOT NULL DEFAULT 'disponible',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para almacenar los pedidos de los clientes
CREATE TABLE pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_producto INT NOT NULL,
  cantidad INT NOT NULL CHECK (cantidad > 0), -- Restricción: la cantidad debe ser un valor positivo
  fecha_pedido DATE NOT NULL,
  estado_pedido ENUM('pendiente', 'procesando', 'enviado', 'entregado', 'cancelado') NOT NULL DEFAULT 'pendiente',
  total_pedido DECIMAL(10,2) NOT NULL CHECK (total_pedido > 0),
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_producto) REFERENCES productos(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
