-- Campuslands MySQL - avanzado ejercicio 007
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Equipos (
    equipo_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    ciudad VARCHAR(50) NOT NULL
);

CREATE TABLE Partidos (
    partido_id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_local_id INT NOT NULL,
    equipo_visitante_id INT NOT NULL,
    goles_local INT NOT NULL,
    goles_visitante INT NOT NULL,
    fecha_partido DATETIME NOT NULL,
    FOREIGN KEY (equipo_local_id) REFERENCES Equipos(equipo_id) ON DELETE CASCADE,
    FOREIGN KEY (equipo_visitante_id) REFERENCES Equipos(equipo_id) ON DELETE CASCADE
);