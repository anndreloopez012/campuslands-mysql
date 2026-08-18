-- Campuslands MySQL - basico ejercicio 013
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE directores (
    id_director INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(50)
);

CREATE TABLE peliculas (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    id_director INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    subgenero VARCHAR(50) NOT NULL, 
    anio_estreno INT NOT NULL,
    clasificacion_edad VARCHAR(10) DEFAULT 'R',
    estado ENUM('Disponible', 'Proximamente', 'Retirada') NOT NULL DEFAULT 'Disponible',
    FOREIGN KEY (id_director) REFERENCES directores(id_director) ON DELETE CASCADE
);


CREATE TABLE resenas (
    id_resena INT AUTO_INCREMENT PRIMARY KEY,
    id_pelicula INT NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    calificacion INT CHECK (calificacion BETWEEN 1 AND 5), 
    comentario TEXT,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pelicula) REFERENCES peliculas(id_pelicula) ON DELETE CASCADE
);
