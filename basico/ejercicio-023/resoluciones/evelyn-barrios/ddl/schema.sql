-- Campuslands MySQL - basico ejercicio 023
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS basico_ejercicio_023;

CREATE TABLE basico_ejercicio_023 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  categoria VARCHAR(80) NOT NULL,
  puntaje DECIMAL(5,2) NOT NULL DEFAULT 0, -- Ajustado a 5,2 para puntajes de 0.00 a 999.99
  estado ENUM('activo','revision','inactivo') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (nombre), -- Los nombres de los modelos 3D deben ser únicos
  CONSTRAINT chk_puntaje CHECK (puntaje >= 0 AND puntaje <= 100) -- El puntaje debe estar entre 0 y 100
);
