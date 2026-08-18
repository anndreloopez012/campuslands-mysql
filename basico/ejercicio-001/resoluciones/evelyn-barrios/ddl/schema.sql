-- ddl/schema.sql
--
-- Diseño de la base de datos para el torneo de eSports MOBA.

-- Creación de la base de datos si no existe
CREATE DATABASE IF NOT EXISTS torneo_moba;
USE torneo_moba;

-- Tabla para los equipos
CREATE TABLE equipos (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(100) NOT NULL UNIQUE,
    pais_origen VARCHAR(50)
);

-- Tabla para los jugadores
CREATE TABLE jugadores (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(50) NOT NULL UNIQUE,
    nombre_completo VARCHAR(150),
    id_equipo INT,
    rol ENUM('Top', 'Jungle', 'Mid', 'ADC', 'Support') NOT NULL,
    estado ENUM('Activo', 'Inactivo', 'Baneado') DEFAULT 'Activo',
    FOREIGN KEY (id_equipo) REFERENCES equipos(id_equipo)
);

-- Tabla para las estadísticas de cada partida por jugador
CREATE TABLE estadisticas_partida (
    id_estadistica INT AUTO_INCREMENT PRIMARY KEY,
    id_jugador INT,
    fecha_partida DATETIME DEFAULT CURRENT_TIMESTAMP,
    asesinatos INT DEFAULT 0,
    muertes INT DEFAULT 0,
    asistencias INT DEFAULT 0,
    -- Restricción para asegurar que los valores no sean negativos
    CONSTRAINT chk_estadisticas CHECK (asesinatos >= 0 AND muertes >= 0 AND asistencias >= 0),
    FOREIGN KEY (id_jugador) REFERENCES jugadores(id_jugador)
);
--aqui