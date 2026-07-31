-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_pingpong_torneo;
CREATE DATABASE db_pingpong_torneo;
USE db_pingpong_torneo;

-- Tabla principal: Jugadores del Torneo de Ping Pong
CREATE TABLE jugadores_pingpong (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(50) NOT NULL,
    nivel_categoria VARCHAR(30) NOT NULL, -- Ej: Principiante, Intermedio, Avanzado, Profesional
    partidos_ganados INT NOT NULL DEFAULT 0,
    partidos_perdidos INT NOT NULL DEFAULT 0,
    ranking_puntos INT NOT NULL DEFAULT 1000,
    estado ENUM('activo', 'suspendido', 'retirado') DEFAULT 'activo',
    fecha_registro DATE NOT NULL,
    
    -- Restricciones de validación profesionales requeridas
    CONSTRAINT chk_ganados_positivos CHECK (partidos_ganados >= 0),
    CONSTRAINT chk_perdidos_positivos CHECK (partidos_perdidos >= 0),
    CONSTRAINT chk_ranking_minimo CHECK (ranking_puntos >= 0)
);