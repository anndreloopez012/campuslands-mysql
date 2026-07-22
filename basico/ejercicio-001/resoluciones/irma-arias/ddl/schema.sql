
-- DDL: Creación del esquema para Torneo Esports MOBA
-- Autor: Irma Yaneht Arias García

DROP DATABASE IF EXISTS db_moba_torneo;
CREATE DATABASE db_moba_torneo;
USE db_moba_torneo;

-- Creación de la tabla principal de jugadores/participantes del torneo
CREATE TABLE jugadores_moba (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(50) NOT NULL,
    nickname VARCHAR(50) NOT NULL UNIQUE,
    rol VARCHAR(30) NOT NULL, -- Ej: Tank, Assassin, Mage, Support, Marksman
    equipo VARCHAR(50) NOT NULL,
    puntaje_kda DECIMAL(4,2) NOT NULL, -- Validación de precisión para puntaje de rendimiento
    partidas_jugadas INT NOT NULL,
    estado ENUM('activo', 'suspendido', 'eliminado') DEFAULT 'activo',
    fecha_inscripcion DATE NOT NULL,
    CONSTRAINT chk_kda_positivo CHECK (puntaje_kda >= 0.00),
    CONSTRAINT chk_partidas CHECK (partidas_jugadas >= 0)
);