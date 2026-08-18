-- Campuslands MySQL - intermedio ejercicio 011
-- Contexto: Modulo de datos para pingpong (Restriccion CHECK).
CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS intermedio_ejercicio_011_partidos;
DROP TABLE IF EXISTS intermedio_ejercicio_011_jugadores;

CREATE TABLE intermedio_ejercicio_011_jugadores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  ranking_puntos INT NOT NULL DEFAULT 1000,
  edad INT NOT NULL,
  CONSTRAINT chk_inter_011_ranking CHECK (ranking_puntos >= 0),
  CONSTRAINT chk_inter_011_edad CHECK (edad >= 12)
);

CREATE TABLE intermedio_ejercicio_011_partidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  jugador1_id INT NOT NULL,
  jugador2_id INT NOT NULL,
  sets_jugador1 INT NOT NULL DEFAULT 0,
  sets_jugador2 INT NOT NULL DEFAULT 0,
  duracion_minutos INT NOT NULL,
  FOREIGN KEY (jugador1_id) REFERENCES intermedio_ejercicio_011_jugadores(id),
  FOREIGN KEY (jugador2_id) REFERENCES intermedio_ejercicio_011_jugadores(id),
  CONSTRAINT chk_inter_011_jug_distintos CHECK (jugador1_id <> jugador2_id),
  CONSTRAINT chk_inter_011_sets_validos CHECK (sets_jugador1 >= 0 AND sets_jugador2 >= 0 AND (sets_jugador1 + sets_jugador2) <= 5),
  CONSTRAINT chk_inter_011_dur_positiva CHECK (duracion_minutos > 0)
);