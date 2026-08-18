CREATE DATABASE IF NOT EXISTS db_liga_futbol_2fn;
USE db_liga_futbol_2fn;

CREATE TABLE equipos (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(60) NOT NULL,
    ciudad VARCHAR(50) NOT NULL
);

CREATE TABLE estadios (
    id_estadio INT AUTO_INCREMENT PRIMARY KEY,
    id_equipo INT NOT NULL,
    nombre_estadio VARCHAR(60) NOT NULL,
    capacidad INT NOT NULL,
    CONSTRAINT fk_equipo_estadio FOREIGN KEY (id_equipo) REFERENCES equipos(id_equipo)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE rendimiento_temporada (
    id_equipo INT NOT NULL,
    anio_temporada INT NOT NULL,
    puntos INT NOT NULL DEFAULT 0,
    goles_a_favor INT NOT NULL DEFAULT 0,
    goles_en_contra INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id_equipo, anio_temporada),
    CONSTRAINT fk_rendimiento_equipo FOREIGN KEY (id_equipo) REFERENCES equipos(id_equipo)
        ON DELETE CASCADE ON UPDATE CASCADE
);