-- Campuslands MySQL - intermedio ejercicio 008
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Equipos (
    equipo_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    ciudad VARCHAR(50) NOT NULL
);

CREATE TABLE Jugadores (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_id INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    dorsal INT NOT NULL,
    posicion ENUM('Portero', 'Cierre', 'Ala', 'Pivot') NOT NULL,
    FOREIGN KEY (equipo_id) REFERENCES Equipos(equipo_id) ON DELETE CASCADE,
    CONSTRAINT uk_equipo_dorsal UNIQUE (equipo_id, dorsal)
);

CREATE TABLE Partidos (
    partido_id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_local_id INT NOT NULL,
    equipo_visitante_id INT NOT NULL,
    goles_local INT DEFAULT 0,
    goles_visitante INT DEFAULT 0,
    fecha_partido DATETIME NOT NULL,
    pabellon VARCHAR(100) NOT NULL,
    FOREIGN KEY (equipo_local_id) REFERENCES Equipos(equipo_id),
    FOREIGN KEY (equipo_visitante_id) REFERENCES Equipos(equipo_id)
);
