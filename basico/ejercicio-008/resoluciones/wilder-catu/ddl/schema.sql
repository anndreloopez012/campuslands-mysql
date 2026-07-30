-- =====================================================
-- Base de Datos: campuslands_mysqli
-- Archivo: schema.sql
-- Descripción: Creación de la tabla de equipos de fútbol sala
-- =====================================================

USE campuslands_mysqli;

DROP TABLE IF EXISTS equipos_futsal;

CREATE TABLE equipos_futsal (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    entrenador VARCHAR(80) NOT NULL,
    victorias INT NOT NULL DEFAULT 0 CHECK (victorias >= 0),
    derrotas INT NOT NULL DEFAULT 0 CHECK (derrotas >= 0),
    puntos INT NOT NULL DEFAULT 0 CHECK (puntos >= 0),
    estado ENUM('Activo','Inactivo') NOT NULL DEFAULT 'Activo'
);