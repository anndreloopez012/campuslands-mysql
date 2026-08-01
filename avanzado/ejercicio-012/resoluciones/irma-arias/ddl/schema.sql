-- DDL: Estructura avanzada para Playlist Musical
DROP DATABASE IF EXISTS db_playlist_avanzado;
CREATE DATABASE db_playlist_avanzado;
USE db_playlist_avanzado;

CREATE TABLE canciones_playlist (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_cancion VARCHAR(20) NOT NULL UNIQUE,
    titulo VARCHAR(60) NOT NULL,
    artista VARCHAR(60) NOT NULL,
    genero_musical VARCHAR(30) NOT NULL,
    duracion_minutos DECIMAL(4,2) NOT NULL,
    reproducciones INT NOT NULL DEFAULT 0,
    estado ENUM('activa', 'pausada', 'archivada', 'favorita') DEFAULT 'activa',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_duracion CHECK (duracion_minutos > 0),
    CONSTRAINT chk_reproducciones CHECK (reproducciones >= 0)
);