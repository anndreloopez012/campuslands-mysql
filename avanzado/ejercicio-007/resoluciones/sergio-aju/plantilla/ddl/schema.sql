-- Campuslands MySQL - avanzado ejercicio 007
-- Resolución por: Sergio Miranda Ajú
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS ejercicio_007_liga_futbol;

CREATE TABLE ejercicio_007_liga_futbol (
  id INT AUTO_INCREMENT PRIMARY KEY,
  equipo VARCHAR(100) NOT NULL,
  partidos_jugados INT NOT NULL DEFAULT 0,
  partidos_ganados INT NOT NULL DEFAULT 0,
  partidos_empatados INT NOT NULL DEFAULT 0,
  partidos_perdidos INT NOT NULL DEFAULT 0,
  goles_favor INT NOT NULL DEFAULT 0,
  goles_contra INT NOT NULL DEFAULT 0,
  estado ENUM('activo', 'descendido', 'sancionado') NOT NULL DEFAULT 'activo',
  actualizado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);