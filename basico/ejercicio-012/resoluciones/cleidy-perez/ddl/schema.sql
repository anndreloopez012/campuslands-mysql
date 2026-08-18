-- Campuslands MySQL - basico ejercicio 012
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE canciones (
    id_cancion INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    artista VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    duracion_segundos INT NOT NULL CHECK (duracion_segundos > 0)
);

CREATE TABLE playlist_canciones (
    id_playlist_cancion INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    nombre_playlist VARCHAR(100) NOT NULL,
    id_cancion INT NOT NULL,
    posicion INT NOT NULL CHECK (posicion > 0),
    
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_cancion) REFERENCES canciones(id_cancion) ON DELETE CASCADE
);