-- DDL: Estructura avanzada para la Academia de Ping Pong
DROP DATABASE IF EXISTS db_pingpong_avanzado;
CREATE DATABASE db_pingpong_avanzado;
USE db_pingpong_avanzado;

CREATE TABLE jugadores_pingpong (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_jugador VARCHAR(20) NOT NULL UNIQUE,
    nombre_completo VARCHAR(60) NOT NULL,
    nivel_categoria VARCHAR(30) NOT NULL,
    partidos_jugados INT NOT NULL DEFAULT 0,
    partidos_ganados INT NOT NULL DEFAULT 0,
    puntos_ranking INT NOT NULL DEFAULT 0,
    estado ENUM('activo', 'lesionado', 'suspendido', 'retirado') DEFAULT 'activo',
    
    -- Validaciones y restricciones de integridad (Constraint Checks)
    CONSTRAINT chk_jugados_pp CHECK (partidos_jugados >= 0),
    CONSTRAINT chk_ganados_pp CHECK (partidos_ganados >= 0),
    CONSTRAINT chk_ranking_pp CHECK (puntos_ranking >= 0),
    CONSTRAINT chk_logica_partidos CHECK (partidos_ganados <= partidos_jugados)
);