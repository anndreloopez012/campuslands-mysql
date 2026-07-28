DROP DATABASE IF EXISTS db_futbol_sala_irma;
CREATE DATABASE db_futbol_sala_irma;
USE db_futbol_sala_irma;

CREATE TABLE equipos_sala (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_club VARCHAR(50) NOT NULL UNIQUE,
    partidos_jugados INT NOT NULL DEFAULT 0,
    goles_favor INT NOT NULL DEFAULT 0,
    goles_contra INT NOT NULL DEFAULT 0,
    puntos INT NOT NULL DEFAULT 0,
    estado VARCHAR(20) NOT NULL DEFAULT 'Activo' CHECK (estado IN ('Activo', 'Inactivo'))
);