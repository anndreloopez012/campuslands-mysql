-- Campuslands MySQL - basico ejercicio 011
-- Contexto: Modulo de datos para pingpong (Validaciones Simples).
CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS basico_ejercicio_011_partidos;
CREATE TABLE basico_ejercicio_011_partidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  jugador_local VARCHAR(100) NOT NULL,
  jugador_visitante VARCHAR(100) NOT NULL,
  puntos_local INT NOT NULL DEFAULT 0,
  puntos_visitante INT NOT NULL DEFAULT 0,
  modalidad ENUM('Individual', 'Dobles') NOT NULL DEFAULT 'Individual',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT chk_puntos_positivos CHECK (puntos_local >= 0 AND puntos_visitante >= 0),
  CONSTRAINT chk_jugadores_distintos CHECK (jugador_local <> jugador_visitante)
);