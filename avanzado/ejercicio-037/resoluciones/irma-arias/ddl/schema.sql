-- DDL: Estructura avanzada para Liga de Fútbol (ORDER BY y Ordenamiento)
DROP DATABASE IF EXISTS db_liga_futbol;
CREATE DATABASE db_liga_futbol;
USE db_liga_futbol;

CREATE TABLE equipos_liga (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_equipo VARCHAR(10) NOT NULL UNIQUE,
    nombre_equipo VARCHAR(50) NOT NULL,
    partidos_jugados INT NOT NULL DEFAULT 0,
    puntos INT NOT NULL DEFAULT 0,
    goles_a_favor INT NOT NULL DEFAULT 0,
    goles_en_contra INT NOT NULL DEFAULT 0,
    estado_equipo ENUM('activo', 'sancionado', 'descendido') DEFAULT 'activo',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_partidos CHECK (partidos_jugados >= 0),
    CONSTRAINT chk_puntos CHECK (puntos >= 0),
    CONSTRAINT chk_goles_favor CHECK (goles_a_favor >= 0),
    CONSTRAINT chk_goles_contra CHECK (goles_en_contra >= 0)
);