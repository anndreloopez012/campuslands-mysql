-- Campuslands MySQL - intermedio ejercicio 001
-- Creación de la estructura para el torneo de esports MOBA.

CREATE DATABASE IF NOT EXISTS moba_tournament_intermediate;
USE moba_tournament_intermediate;

-- Tabla para almacenar los equipos participantes
CREATE TABLE IF NOT EXISTS equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(50) NOT NULL UNIQUE,
    region VARCHAR(50) NOT NULL,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para almacenar los jugadores, relacionados con un equipo
CREATE TABLE IF NOT EXISTS jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(50) NOT NULL UNIQUE,
    nombre_completo VARCHAR(100) NOT NULL,
    rol ENUM('Top Laner', 'Jungler', 'Mid Laner', 'ADC', 'Support') NOT NULL,
    equipo_id INT,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- Restricción de clave foránea para la relación con equipos
    FOREIGN KEY (equipo_id) REFERENCES equipos(id)
);
-- Fin del script
