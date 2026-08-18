-- Campuslands MySQL - basico ejercicio 016
-- Ejecutar este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

-- Eliminar tablas si existen para asegurar un estado limpio
DROP TABLE IF EXISTS platos;
DROP TABLE IF EXISTS categorias_plato;

-- Tabla para almacenar las categorías de los platos
CREATE TABLE categorias_plato (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  descripcion TEXT,
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para almacenar los platos del restaurante
CREATE TABLE platos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL UNIQUE,
  descripcion TEXT,
  precio DECIMAL(5,2) NOT NULL CHECK (precio > 0), -- Restricción: el precio debe ser un valor positivo
  id_categoria INT NOT NULL,
  disponible BOOLEAN NOT NULL DEFAULT TRUE,
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_categoria) REFERENCES categorias_plato(id) ON DELETE RESTRICT ON UPDATE CASCADE
);