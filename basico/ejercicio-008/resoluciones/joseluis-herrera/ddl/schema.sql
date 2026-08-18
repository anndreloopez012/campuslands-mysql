CREATE DATABASE IF NOT EXISTS db_futbol_sala;
USE db_futbol_sala;

CREATE TABLE equipos_sala (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(60) NOT NULL,
    puntos INT NOT NULL DEFAULT 0,
    partidos_jugados INT NOT NULL DEFAULT 0,
    goles_favor INT NOT NULL DEFAULT 0
);

CREATE TABLE jugadores (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    id_equipo INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    posicion VARCHAR(30) NOT NULL,
    goles_anotados INT NOT NULL DEFAULT 0,
    tarjetas_amarillas INT NOT NULL DEFAULT 0,
    CONSTRAINT fk_equipo_jugador FOREIGN KEY (id_equipo) REFERENCES equipos_sala(id_equipo)
        ON DELETE CASCADE ON UPDATE CASCADE
);