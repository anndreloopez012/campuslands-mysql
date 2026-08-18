-- Campuslands MySQL - basico ejercicio 015
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

-- Tabla para almacenar los géneros de los juegos
DROP TABLE IF EXISTS juegos;
DROP TABLE IF EXISTS generos;

CREATE TABLE generos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para almacenar los juegos
CREATE TABLE juegos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL,
  desarrollador VARCHAR(255) NOT NULL,
  fecha_lanzamiento DATE,
  id_genero INT NOT NULL,
  calificacion_metacritic DECIMAL(3,1) NOT NULL CHECK (calificacion_metacritic >= 0.0 AND calificacion_metacritic <= 100.0), -- Validación: calificación entre 0.0 y 100.0
  estado ENUM('disponible', 'jugando', 'completado', 'pendiente') NOT NULL DEFAULT 'disponible',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_genero) REFERENCES generos(id) ON DELETE RESTRICT ON UPDATE CASCADE
);