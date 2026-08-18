CREATE DATABASE IF NOT EXISTS db_futbol_sala_3fn;
USE db_futbol_sala_3fn;

DROP TABLE IF EXISTS estadisticas_partido_jugador;
DROP TABLE IF EXISTS jugadores;
DROP TABLE IF EXISTS equipos_sala;

CREATE TABLE equipos_sala (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(60) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
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

CREATE TABLE estadisticas_partido_jugador (
    id_estadistica INT AUTO_INCREMENT PRIMARY KEY,
    id_jugador INT NOT NULL,
    jornada INT NOT NULL,
    minutos_jugados INT NOT NULL,
    CONSTRAINT fk_jugador_estadistica FOREIGN KEY (id_jugador) REFERENCES jugadores(id_jugador)
        ON DELETE CASCADE ON UPDATE CASCADE
);