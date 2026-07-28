DROP DATABASE IF EXISTS db_peliculas_miedo_irma;
CREATE DATABASE db_peliculas_miedo_irma;
USE db_peliculas_miedo_irma;

CREATE TABLE peliculas_terror (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(80) NOT NULL,
    subgenero VARCHAR(30) NOT NULL CHECK (subgenero IN ('Slasher', 'Sobrenatural', 'Psicologico', 'Zombies', 'Gore', 'Paranormal')),
    anio_estreno INT NOT NULL CHECK (anio_estreno >= 1920),
    calificacion_imdb DECIMAL(3,1) NOT NULL CHECK (calificacion_imdb BETWEEN 1.0 AND 10.0),
    estado_cartelera VARCHAR(20) NOT NULL DEFAULT 'Disponible' CHECK (estado_cartelera IN ('Disponible', 'Proximamente', 'Agotada', 'Archivada'))
);