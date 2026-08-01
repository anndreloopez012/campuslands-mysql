-- DDL: Estructura avanzada para Ranking Battle Royale (Tipos de Datos)
DROP DATABASE IF EXISTS db_ranking_battleroyale;
CREATE DATABASE db_ranking_battleroyale;
USE db_ranking_battleroyale;

CREATE TABLE jugadores_battle_royale (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_jugador VARCHAR(20) NOT NULL UNIQUE,
    gamertag VARCHAR(50) NOT NULL,
    nivel_experiencia INT NOT NULL,
    puntos_ranking DECIMAL(10,2) NOT NULL,
    partidas_jugadas INT NOT NULL,
    fecha_registro DATE NOT NULL,
    estado_jugador ENUM('activo', 'suspendido', 'inactivo', 'leyenda') DEFAULT 'activo',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_nivel_experiencia CHECK (nivel_experiencia > 0),
    CONSTRAINT chk_puntos_ranking CHECK (puntos_ranking >= 0),
    CONSTRAINT chk_partidas_jugadas CHECK (partidas_jugadas >= 0)
);