-- Campuslands MySQL - basico ejercicio 013
-- Contexto: Modulo de datos para catalogo de peliculas de miedo (Filtros por Estado).
CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS basico_ejercicio_013_peliculas;

CREATE TABLE basico_ejercicio_013_peliculas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  director VARCHAR(100) NOT NULL,
  anio_estreno INT NOT NULL,
  estado ENUM('Disponible', 'Alquilada', 'Mantenimiento', 'Descatalogada') NOT NULL DEFAULT 'Disponible',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);