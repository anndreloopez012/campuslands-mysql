-- Campuslands MySQL - intermedio ejercicio 057
-- Resolucion: maria-montepeque
-- Tema: videojuego de accion y aventura
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS partidas_heroe_intermedio;

CREATE TABLE partidas_heroe_intermedio (
  id_partida INT AUTO_INCREMENT PRIMARY KEY,
  jugador VARCHAR(80) NOT NULL,
  dificultad ENUM('facil','normal','dificil') NOT NULL,
  nivel_alcanzado INT NOT NULL,
  enemigos_derrotados INT NOT NULL,
  muertes INT NOT NULL,
  duracion_min INT NOT NULL,
  fecha_partida DATE NOT NULL,
  CONSTRAINT chk_partidas_heroe_intermedio_nivel CHECK (nivel_alcanzado > 0),
  CONSTRAINT chk_partidas_heroe_intermedio_duracion CHECK (duracion_min > 0)
);
