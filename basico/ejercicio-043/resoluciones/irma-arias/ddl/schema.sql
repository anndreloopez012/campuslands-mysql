-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_peliculas_terror;
CREATE DATABASE db_peliculas_terror;
USE db_peliculas_terror;

-- Tabla principal: Catálogo de Películas de Miedo
CREATE TABLE peliculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(80) NOT NULL,
    director VARCHAR(60) NOT NULL,
    anio_estreno INT NOT NULL,
    subgenero VARCHAR(40) NOT NULL, -- Ej: Sobrenatural, Slasher, Psicológico, Zombie
    calificacion_imdb DECIMAL(3,1) NOT NULL, -- Ej: 7.5, 6.2
    estado ENUM('disponible', 'proximamente', 'agotada', 'suspendida') DEFAULT 'disponible',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_anio CHECK (anio_estreno >= 1900 AND anio_estreno <= 2030),
    CONSTRAINT chk_calificacion CHECK (calificacion_imdb >= 0.0 AND calificacion_imdb <= 10.0)
);