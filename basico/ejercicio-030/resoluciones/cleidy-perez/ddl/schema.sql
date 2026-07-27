-- Campuslands MySQL - basico ejercicio 030
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Streamers (
    streamer_id INT AUTO_INCREMENT PRIMARY KEY,
    alias VARCHAR(50) NOT NULL UNIQUE,
    rol VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Equipamiento (
    equipo_id INT AUTO_INCREMENT PRIMARY KEY,
    streamer_id INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    marca_modelo VARCHAR(100) NOT NULL,
    FOREIGN KEY (streamer_id) REFERENCES Streamers(streamer_id) ON DELETE CASCADE
);

CREATE TABLE Transmisiones (
    transmision_id INT AUTO_INCREMENT PRIMARY KEY,
    streamer_id INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    duracion_minutos INT DEFAULT 0,
    FOREIGN KEY (streamer_id) REFERENCES Streamers(streamer_id) ON DELETE CASCADE
);
