-- Campuslands MySQL - basico ejercicio 014
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS peliculas_sf; -- Renombrado de basico_ejercicio_014 para mayor claridad

CREATE TABLE peliculas_sf (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL,
  director VARCHAR(255) NOT NULL,
  fecha_lanzamiento DATE NOT NULL, -- Campo clave para practicar fechas básicas
  saga VARCHAR(100),
  duracion_minutos INT NOT NULL CHECK (duracion_minutos > 0),
  calificacion_imdb DECIMAL(2,1) NOT NULL CHECK (calificacion_imdb >= 1.0 AND calificacion_imdb <= 10.0), -- Validación: calificación entre 1.0 y 10.0
  estado ENUM('disponible', 'archivada', 'proximamente') NOT NULL DEFAULT 'disponible',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);