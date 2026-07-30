-- =====================================================
-- Base de Datos: campuslands_mysqli
-- Archivo: schema.sql
-- Descripción: Creación de la tabla liga de fútbol
-- =====================================================

USE campuslands_mysqli;

DROP TABLE IF EXISTS equipos;

CREATE TABLE equipos (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    ciudad VARCHAR(60) NOT NULL,
    entrenador VARCHAR(80) NOT NULL,
    partidos_jugados INT NOT NULL DEFAULT 0 CHECK (partidos_jugados >= 0),
    puntos INT NOT NULL DEFAULT 0 CHECK (puntos >= 0),
    diferencia_goles INT NOT NULL,
    estado ENUM('Activo','Inactivo') NOT NULL DEFAULT 'Activo'
);