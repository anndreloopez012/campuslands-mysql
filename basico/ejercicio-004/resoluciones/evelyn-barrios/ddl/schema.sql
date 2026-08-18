-- Campuslands MySQL - basico ejercicio 003
-- Archivo: ddl/schema.sql
-- Archivo: ddl/schema.sql
-- Descripción: Creación del esquema de base de datos para una plataforma de streaming de música.

-- Crear la base de datos si no existe y seleccionarla
CREATE DATABASE IF NOT EXISTS music_streaming;
USE music_streaming;

-- Tabla para almacenar la información de los artistas
CREATE TABLE artistas (
    id_artista INT AUTO_INCREMENT PRIMARY KEY,
    nombre_artista VARCHAR(100) NOT NULL UNIQUE,
    pais_origen VARCHAR(50)
);

-- Tabla para almacenar los géneros musicales
CREATE TABLE generos (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    nombre_genero VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla para almacenar la información de los álbumes
CREATE TABLE albumes (
    id_album INT AUTO_INCREMENT PRIMARY KEY,
    titulo_album VARCHAR(150) NOT NULL,
    id_artista INT,
    id_genero INT,
    anio_lanzamiento SMALLINT,
    CONSTRAINT fk_artista FOREIGN KEY (id_artista) REFERENCES artistas(id_artista),
    CONSTRAINT fk_genero FOREIGN KEY (id_genero) REFERENCES generos(id_genero)
);

-- Tabla para almacenar la información de las canciones
CREATE TABLE canciones (
    id_cancion INT AUTO_INCREMENT PRIMARY KEY,
    titulo_cancion VARCHAR(150) NOT NULL,
    id_album INT,
    duracion_segundos INT,
    reproducciones INT DEFAULT 0,
    CONSTRAINT fk_album FOREIGN KEY (id_album) REFERENCES albumes(id_album),
    CONSTRAINT chk_duracion_positiva CHECK (duracion_segundos > 0)
);
