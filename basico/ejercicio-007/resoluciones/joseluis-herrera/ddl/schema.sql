CREATE DATABASE IF NOT EXISTS db_liga_futbol;
USE db_liga_futbol;

CREATE TABLE equipos (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(60) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    estadio VARCHAR(60) NOT NULL,
    puntos INT NOT NULL DEFAULT 0,
    goles_a_favor INT NOT NULL DEFAULT 0,
    goles_en_contra INT NOT NULL DEFAULT 0
);