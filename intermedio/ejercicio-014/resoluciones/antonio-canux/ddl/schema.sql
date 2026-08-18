-- Campuslands MySQL - intermedio ejercicio 014
-- Contexto: Modulo de datos para saga de ciencia ficcion (Vistas Simples).
CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

-- Limpieza de vistas y tablas previas
DROP VIEW IF EXISTS vw_inter_014_heroes_rebeldes;
DROP VIEW IF EXISTS vw_inter_014_personajes_completos;
DROP VIEW IF EXISTS vw_inter_014_estadisticas_alineacion;
DROP TABLE IF EXISTS intermedio_ejercicio_014_personajes;
DROP TABLE IF EXISTS intermedio_ejercicio_014_facciones;

CREATE TABLE intermedio_ejercicio_014_facciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  alineacion ENUM('Luz', 'Oscuridad', 'Neutral') NOT NULL
);

CREATE TABLE intermedio_ejercicio_014_personajes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  faccion_id INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  especie VARCHAR(50) NOT NULL,
  planeta_origen VARCHAR(100) DEFAULT 'Desconocido',
  FOREIGN KEY (faccion_id) REFERENCES intermedio_ejercicio_014_facciones(id) ON DELETE CASCADE
);

-- Vista 1: Directorio completo uniendo facciones para simplificar consultas futuras
CREATE VIEW vw_inter_014_personajes_completos AS
  SELECT p.id, p.nombre, p.especie, p.planeta_origen, f.nombre AS faccion, f.alineacion
  FROM intermedio_ejercicio_014_personajes p
  JOIN intermedio_ejercicio_014_facciones f ON p.faccion_id = f.id;

-- Vista 2: Resumen estadistico pre-calculado por alineacion
CREATE VIEW vw_inter_014_estadisticas_alineacion AS
  SELECT f.alineacion, COUNT(p.id) AS total_personajes
  FROM intermedio_ejercicio_014_facciones f
  LEFT JOIN intermedio_ejercicio_014_personajes p ON f.id = p.faccion_id
  GROUP BY f.alineacion;