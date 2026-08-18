-- Campuslands MySQL - avanzado ejercicio 012
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Canciones (
    cancion_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    artista VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    duracion_segundos INT NOT NULL CHECK (duracion_segundos > 0)
);

CREATE TABLE PlaylistCanciones (
    registro_id INT AUTO_INCREMENT PRIMARY KEY,
    cancion_id INT NOT NULL,
    nombre_playlist VARCHAR(100) NOT NULL,
    orden_reproduccion INT NOT NULL CHECK (orden_reproduccion > 0),
    fecha_agregado DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cancion_id) REFERENCES Canciones(cancion_id) ON DELETE CASCADE,
    CONSTRAINT uk_playlist_orden UNIQUE (nombre_playlist, orden_reproduccion)
);
