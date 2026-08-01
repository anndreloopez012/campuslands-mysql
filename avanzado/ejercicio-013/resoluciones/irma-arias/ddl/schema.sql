-- DDL: Estructura avanzada para el Catálogo de Películas de Miedo
DROP DATABASE IF EXISTS db_peliculas_miedo;
CREATE DATABASE db_peliculas_miedo;
USE db_peliculas_miedo;

CREATE TABLE peliculas_terror (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_pelicula VARCHAR(20) NOT NULL UNIQUE,
    titulo VARCHAR(70) NOT NULL,
    subgenero VARCHAR(30) NOT NULL,
    anio_estreno INT NOT NULL,
    calificacion_imdb DECIMAL(3,1) NOT NULL,
    vistas INT NOT NULL DEFAULT 0,
    estado ENUM('disponible', 'proximamente', 'agotada', 'retirada') DEFAULT 'disponible',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_anio CHECK (anio_estreno >= 1900 AND anio_estreno <= 2100),
    CONSTRAINT chk_calificacion CHECK (calificacion_imdb >= 0.0 AND calificacion_imdb <= 10.0),
    CONSTRAINT chk_vistas CHECK (vistas >= 0)
);