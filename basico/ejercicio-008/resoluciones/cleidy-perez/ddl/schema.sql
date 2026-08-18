-- Campuslands MySQL - basico ejercicio 008
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS futbol_sala;

CREATE TABLE futbol_sala (
  id_jugador INT AUTO_INCREMENT PRIMARY KEY,
  nombre_jugador VARCHAR(150) NOT NULL,
  posicion ENUM('Guardameta', 'Cierre', 'Ala', 'Pivot') NOT NULL,
  dorsal INT NOT NULL,
  goles_marcados INT DEFAULT 0,
  tarjetas_amarillas INT DEFAULT 0,
  fecha_nacimiento DATE NOT NULL,
  equipo INT NOT NULL 
);

