-- Campuslands MySQL - Intermedio Ejercicio 008
-- Tema: Normalización 3FN para fútbol sala

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS estadisticas_jugadores;
DROP TABLE IF EXISTS jugadores;
DROP TABLE IF EXISTS equipos;
DROP TABLE IF EXISTS ciudades;

SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE ciudades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL UNIQUE,
    departamento VARCHAR(80) NOT NULL
);


CREATE TABLE equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ciudad_id INT NOT NULL,
    nombre VARCHAR(80) NOT NULL UNIQUE,

    CONSTRAINT fk_equipo_ciudad
        FOREIGN KEY (ciudad_id)
        REFERENCES ciudades(id)
);


CREATE TABLE jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_id INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    posicion ENUM('Portero','Cierre','Ala','Pívot') NOT NULL,
    edad INT NOT NULL,

    CONSTRAINT fk_jugador_equipo
        FOREIGN KEY (equipo_id)
        REFERENCES equipos(id),

    CHECK (edad >= 16)
);


CREATE TABLE estadisticas_jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jugador_id INT NOT NULL,
    temporada YEAR NOT NULL,
    goles INT NOT NULL DEFAULT 0,
    asistencias INT NOT NULL DEFAULT 0,

    CONSTRAINT fk_estadistica_jugador
        FOREIGN KEY (jugador_id)
        REFERENCES jugadores(id),

    CHECK (goles >= 0),
    CHECK (asistencias >= 0)
);