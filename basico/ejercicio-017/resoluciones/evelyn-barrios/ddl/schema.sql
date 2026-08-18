-- Campuslands MySQL - basico ejercicio 017
-- Ejecutar este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

-- Eliminar tablas si existen para asegurar un estado limpio
DROP TABLE IF EXISTS empleados;
DROP TABLE IF EXISTS departamentos;

-- Tabla para almacenar los departamentos de la empresa
CREATE TABLE departamentos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  ubicacion VARCHAR(100),
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para almacenar los empleados
CREATE TABLE empleados (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  fecha_contratacion DATE NOT NULL,
  salario DECIMAL(10,2) NOT NULL CHECK (salario > 0), -- Restricción: el salario debe ser un valor positivo
  id_departamento INT NOT NULL,
  estado ENUM('activo', 'inactivo', 'licencia') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_departamento) REFERENCES departamentos(id) ON DELETE RESTRICT ON UPDATE CASCADE
);