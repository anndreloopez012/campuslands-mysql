-- DDL: Estructura avanzada para Fútbol Sala (UPDATE y Modificación de Datos)
DROP DATABASE IF EXISTS db_futbol_sala;
CREATE DATABASE db_futbol_sala;
USE db_futbol_sala;

CREATE TABLE equipos_sala (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_equipo VARCHAR(10) NOT NULL UNIQUE,
    nombre_equipo VARCHAR(50) NOT NULL,
    partidos_jugados INT NOT NULL DEFAULT 0,
    goles_favor INT NOT NULL DEFAULT 0,
    puntos INT NOT NULL DEFAULT 0,
    estado_equipo ENUM('activo', 'suspendido', 'eliminado') DEFAULT 'activo',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_partidos_sala CHECK (partidos_jugados >= 0),
    CONSTRAINT chk_goles_favor CHECK (goles_favor >= 0),
    CONSTRAINT chk_puntos_sala CHECK (puntos >= 0)
);