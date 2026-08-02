DROP DATABASE IF EXISTS peliculas_miedo_db;
CREATE DATABASE peliculas_miedo_db;
USE peliculas_miedo_db;

CREATE TABLE directores (
    id_director INT AUTO_INCREMENT PRIMARY KEY,
    nombre_director VARCHAR(60) NOT NULL,
    pais_origen VARCHAR(40) NOT NULL
);

CREATE TABLE subgeneros (
    id_subgenero INT AUTO_INCREMENT PRIMARY KEY,
    nombre_subgenero VARCHAR(40) NOT NULL,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE peliculas (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo_pelicula VARCHAR(80) NOT NULL,
    anio_estreno INT UNSIGNED CHECK (anio_estreno BETWEEN 1920 AND 2030),
    duracion_minutos INT UNSIGNED CHECK (duracion_minutos BETWEEN 60 AND 300),
    calificacion_imdb DECIMAL(3,1) UNSIGNED CHECK (calificacion_imdb BETWEEN 1.0 AND 10.0),
    id_director INT NOT NULL,
    estado_estreno ENUM('cartelera', 'streaming', 'clasico', 'archivada') DEFAULT 'clasico',
    FOREIGN KEY (id_director) REFERENCES directores(id_director) ON DELETE CASCADE
);

CREATE TABLE pelicula_subgenero (
    id_pelicula INT NOT NULL,
    id_subgenero INT NOT NULL,
    PRIMARY KEY (id_pelicula, id_subgenero),
    FOREIGN KEY (id_pelicula) REFERENCES peliculas(id_pelicula) ON DELETE CASCADE,
    FOREIGN KEY (id_subgenero) REFERENCES subgeneros(id_subgenero) ON DELETE CASCADE
);
