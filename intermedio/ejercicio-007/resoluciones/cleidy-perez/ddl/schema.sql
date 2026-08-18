-- Campuslands MySQL - intermedio ejercicio 007
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Sedes (
    sede_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    tipo_superficie VARCHAR(50) NOT NULL
);

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
    partida_id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_local_id INT NOT NULL,
    equipo_visitante_id INT NOT NULL,
    sede_id INT NOT NULL,
    fecha_partido DATETIME NOT NULL,
    goles_local INT DEFAULT 0,
    goles_visitante INT DEFAULT 0,
    FOREIGN KEY (equipo_local_id) REFERENCES Equipos(equipo_id),
    FOREIGN KEY (equipo_visitante_id) REFERENCES Equipos(equipo_id),
    FOREIGN KEY (sede_id) REFERENCES Sedes(sede_id)
);

CREATE TABLE Goles (
    gol_id INT AUTO_INCREMENT PRIMARY KEY,
    partida_id INT NOT NULL,
    jugador_id INT NOT NULL,
    minuto_gol INT NOT NULL,
    tipo_gol ENUM('Normal', 'Penalti', 'Doble Penalti', 'Propia Puerta') DEFAULT 'Normal',
    FOREIGN KEY (partida_id) REFERENCES Partidos(partida_id) ON DELETE CASCADE,
    FOREIGN KEY (jugador_id) REFERENCES Jugadores(jugador_id) ON DELETE CASCADE
);