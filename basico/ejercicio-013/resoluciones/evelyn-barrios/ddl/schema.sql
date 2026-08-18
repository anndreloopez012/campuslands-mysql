-- Campuslands MySQL - basico ejercicio 013
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS peliculas_miedo; -- Renombrado de basico_ejercicio_013 para mayor claridad

CREATE TABLE peliculas_miedo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL,
  director VARCHAR(255) NOT NULL,
  año_lanzamiento YEAR NOT NULL,
  genero VARCHAR(100) NOT NULL,
  calificacion_imdb DECIMAL(2,1) NOT NULL CHECK (calificacion_imdb >= 1.0 AND calificacion_imdb <= 10.0), -- Validación: calificación entre 1.0 y 10.0
  duracion_minutos INT NOT NULL CHECK (duracion_minutos > 0),
  estado ENUM('disponible', 'oculto', 'proximamente') NOT NULL DEFAULT 'disponible',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
