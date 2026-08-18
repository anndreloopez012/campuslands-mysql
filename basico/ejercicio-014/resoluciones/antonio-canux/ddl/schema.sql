-- Campuslands MySQL - basico ejercicio 014
-- Contexto: Modulo de datos para saga de ciencia ficcion (Fechas basicas).
CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS basico_ejercicio_014_peliculas_scifi;

CREATE TABLE basico_ejercicio_014_peliculas_scifi (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  episodio VARCHAR(10) NOT NULL,
  director VARCHAR(100) NOT NULL,
  fecha_estreno DATE NOT NULL,
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);