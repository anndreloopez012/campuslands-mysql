-- Campuslands MySQL - intermedio ejercicio 012
-- Contexto: Modulo de datos para playlist musical (Consultas de Reportes).
CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS intermedio_ejercicio_012_reproducciones;
DROP TABLE IF EXISTS intermedio_ejercicio_012_canciones;

CREATE TABLE intermedio_ejercicio_012_canciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  artista VARCHAR(150) NOT NULL,
  genero VARCHAR(50) NOT NULL,
  anio_lanzamiento INT NOT NULL
);

CREATE TABLE intermedio_ejercicio_012_reproducciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cancion_id INT NOT NULL,
  fecha_registro DATE NOT NULL,
  streams_totales INT NOT NULL DEFAULT 0,
  plataforma VARCHAR(50) NOT NULL,
  FOREIGN KEY (cancion_id) REFERENCES intermedio_ejercicio_012_canciones(id)
);