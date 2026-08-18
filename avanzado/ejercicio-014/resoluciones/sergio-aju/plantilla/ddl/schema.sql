-- Campuslands MySQL - avanzado ejercicio 014
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS avanzado_ejercicio_014;

CREATE TABLE avanzado_ejercicio_014 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL, -- Nombre de la misión, nave o planeta
  categoria VARCHAR(80) NOT NULL, -- Categoría (Ej: 'Exploración', 'Combate', 'Colonización', 'Diplomacia')
  puntaje DECIMAL(10,2) NOT NULL DEFAULT 0, -- Índice de éxito o nivel de amenaza
  estado ENUM('activo','revision','inactivo') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);