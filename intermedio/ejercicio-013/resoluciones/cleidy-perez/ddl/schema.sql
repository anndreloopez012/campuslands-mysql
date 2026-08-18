-- Campuslands MySQL - intermedio ejercicio 013
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Peliculas (
    pelicula_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    director VARCHAR(100) NOT NULL,
    anio_estreno INT NOT NULL CHECK (anio_estreno >= 1895),
    duracion_minutos INT NOT NULL CHECK (duracion_minutos > 0)
);

CREATE TABLE PeliculasGeneros (
    registro_id INT AUTO_INCREMENT PRIMARY KEY,
    pelicula_id INT NOT NULL,
    genero VARCHAR(50) NOT NULL,
    subgenero VARCHAR(50) NOT NULL,
    FOREIGN KEY (pelicula_id) REFERENCES Peliculas(pelicula_id) ON DELETE CASCADE
);