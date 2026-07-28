DROP DATABASE IF EXISTS db_playlist_musical_irma;
CREATE DATABASE db_playlist_musical_irma;
USE db_playlist_musical_irma;

CREATE TABLE canciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(80) NOT NULL,
    artista VARCHAR(60) NOT NULL,
    genero VARCHAR(30) NOT NULL CHECK (genero IN ('Pop', 'Rock', 'Electronica', 'Hip Hop', 'Balada', 'Reggaeton')),
    duracion_minutos DECIMAL(4,2) NOT NULL CHECK (duracion_minutos > 0),
    reproducciones INT NOT NULL DEFAULT 0 CHECK (reproducciones >= 0),
    estado VARCHAR(20) NOT NULL DEFAULT 'Disponible' CHECK (estado IN ('Disponible', 'Archivada'))
);