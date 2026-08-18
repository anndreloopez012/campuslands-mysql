-- Campuslands MySQL - basico ejercicio 007
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS equipos_futbol;

CREATE TABLE equipos_futbol (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(80) NOT NULL,
    ciudad VARCHAR(60) NOT NULL,
    estadio VARCHAR(80) NOT NULL,
    fundacion_anio INT NOT NULL
);
