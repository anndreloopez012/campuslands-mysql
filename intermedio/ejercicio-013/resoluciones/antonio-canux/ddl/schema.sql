-- Campuslands MySQL - intermedio ejercicio 013
-- Contexto: Modulo de datos para catalogo de peliculas de miedo (Tablas Puente).
CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS intermedio_ejercicio_013_reparto;
DROP TABLE IF EXISTS intermedio_ejercicio_013_actores;
DROP TABLE IF EXISTS intermedio_ejercicio_013_peliculas;

CREATE TABLE intermedio_ejercicio_013_peliculas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  director VARCHAR(100) NOT NULL,
  anio_estreno INT NOT NULL
);

CREATE TABLE intermedio_ejercicio_013_actores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  nacionalidad VARCHAR(50) NOT NULL
);

-- Tabla Puente (Relacion Muchos a Muchos - M:N)
CREATE TABLE intermedio_ejercicio_013_reparto (
  pelicula_id INT NOT NULL,
  actor_id INT NOT NULL,
  personaje VARCHAR(100) NOT NULL,
  PRIMARY KEY (pelicula_id, actor_id),
  FOREIGN KEY (pelicula_id) REFERENCES intermedio_ejercicio_013_peliculas(id) ON DELETE CASCADE,
  FOREIGN KEY (actor_id) REFERENCES intermedio_ejercicio_013_actores(id) ON DELETE CASCADE
);