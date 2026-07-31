-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_playlist_musical;
CREATE DATABASE db_playlist_musical;
USE db_playlist_musical;

-- Tabla principal: Canciones en la Lista de Reproducción
CREATE TABLE canciones_playlist (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo_cancion VARCHAR(70) NOT NULL,
    artista VARCHAR(50) NOT NULL,
    genero VARCHAR(30) NOT NULL,
    duracion_segundos INT NOT NULL,
    reproducciones INT NOT NULL DEFAULT 0,
    estado ENUM('activa', 'archivada', 'favorita') DEFAULT 'activa',
    fecha_agregada DATE NOT NULL,
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_duracion_positiva CHECK (duracion_segundos > 0),
    CONSTRAINT chk_reproducciones_positivas CHECK (reproducciones >= 0)
);