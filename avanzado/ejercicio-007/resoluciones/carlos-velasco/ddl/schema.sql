-- Campuslands MySQL - Avanzado Ejercicio 007
-- Tema: Vistas avanzadas para liga de fútbol

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP VIEW IF EXISTS vw_tabla_goleadores;
DROP VIEW IF EXISTS vw_resumen_equipos;

DROP TABLE IF EXISTS participaciones;
DROP TABLE IF EXISTS jugadores;
DROP TABLE IF EXISTS equipos;

SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL UNIQUE,
    ciudad VARCHAR(80) NOT NULL
);


CREATE TABLE jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    posicion ENUM('Portero','Defensa','Mediocampista','Delantero') NOT NULL,
    edad INT NOT NULL,

    CHECK (edad >= 16)
);


CREATE TABLE participaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jugador_id INT NOT NULL,
    equipo_id INT NOT NULL,
    temporada YEAR NOT NULL,
    goles INT NOT NULL DEFAULT 0,
    asistencias INT NOT NULL DEFAULT 0,

    CONSTRAINT fk_participacion_jugador
        FOREIGN KEY (jugador_id)
        REFERENCES jugadores(id),

    CONSTRAINT fk_participacion_equipo
        FOREIGN KEY (equipo_id)
        REFERENCES equipos(id),

    CHECK (goles >= 0),
    CHECK (asistencias >= 0)
);


CREATE VIEW vw_tabla_goleadores AS
SELECT
    j.nombre AS jugador,
    e.nombre AS equipo,
    p.temporada,
    p.goles,
    p.asistencias
FROM participaciones p
INNER JOIN jugadores j
    ON p.jugador_id = j.id
INNER JOIN equipos e
    ON p.equipo_id = e.id;


CREATE VIEW vw_resumen_equipos AS
SELECT
    e.nombre AS equipo,
    COUNT(p.id) AS jugadores,
    SUM(p.goles) AS goles_totales,
    SUM(p.asistencias) AS asistencias_totales
FROM equipos e
INNER JOIN participaciones p
    ON e.id = p.equipo_id
GROUP BY
    e.id,
    e.nombre;