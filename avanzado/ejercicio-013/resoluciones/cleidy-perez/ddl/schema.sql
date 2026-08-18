-- Campuslands MySQL - avanzado ejercicio 013
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Directores (
    director_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais_origen VARCHAR(50) NOT NULL,
    datos_biograficos JSON NOT NULL
);

CREATE TABLE Peliculas (
    pelicula_id INT AUTO_INCREMENT PRIMARY KEY,
    director_id INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    anio_estreno INT NOT NULL,
    detalles_terror JSON NOT NULL,
    FOREIGN KEY (director_id) REFERENCES Directores(director_id) ON DELETE CASCADE
);