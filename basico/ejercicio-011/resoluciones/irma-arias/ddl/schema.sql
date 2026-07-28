DROP DATABASE IF EXISTS db_pingpong_irma;
CREATE DATABASE db_pingpong_irma;
USE db_pingpong_irma;

CREATE TABLE jugadores_pingpong (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(60) NOT NULL,
    nivel_experiencia VARCHAR(20) NOT NULL CHECK (nivel_experiencia IN ('Principiante', 'Intermedio', 'Avanzado')),
    sets_ganados INT NOT NULL DEFAULT 0 CHECK (sets_ganados >= 0),
    sets_perdidos INT NOT NULL DEFAULT 0 CHECK (sets_perdidos >= 0),
    ranking_puntos INT NOT NULL DEFAULT 1000,
    estado VARCHAR(20) NOT NULL DEFAULT 'Activo' CHECK (estado IN ('Activo', 'Lesionado', 'Retirado'))
);