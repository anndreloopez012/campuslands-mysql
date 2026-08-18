-- Campuslands MySQL - avanzado ejercicio 011
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS avanzado_ejercicio_011;

CREATE TABLE avanzado_ejercicio_011 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  categoria VARCHAR(80) NOT NULL, -- Ej: 'Individual', 'Dobles', 'Mixto'
  puntaje DECIMAL(10,2) NOT NULL DEFAULT 0, -- Puntos obtenidos en el torneo/partido
  estado ENUM('activo','revision','inactivo') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);