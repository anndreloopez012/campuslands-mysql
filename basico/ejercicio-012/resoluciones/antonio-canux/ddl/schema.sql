-- Campuslands MySQL - basico ejercicio 012
-- Contexto: Modulo de datos para playlist musical (Modelado de Entidad).
CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS basico_ejercicio_012_playlist;

CREATE TABLE basico_ejercicio_012_playlist (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  artista VARCHAR(150) NOT NULL,
  genero VARCHAR(50) NOT NULL,
  duracion_segundos INT NOT NULL,
  anio_lanzamiento INT NOT NULL,
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);