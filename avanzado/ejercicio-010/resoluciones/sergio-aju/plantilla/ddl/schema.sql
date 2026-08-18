-- Campuslands MySQL - avanzado ejercicio 010
-- Resolución por: Sergio Miranda Ajú
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS ejercicio_010_carreras_urbanas;

CREATE TABLE ejercicio_010_carreras_urbanas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  corredor VARCHAR(120) NOT NULL,
  distancia_km DECIMAL(4,2) NOT NULL,
  tiempo_minutos DECIMAL(6,2) NOT NULL,
  categoria_edad VARCHAR(50) NOT NULL,
  costo_inscripcion_usd DECIMAL(8,2) NOT NULL,
  estado_participacion ENUM('inscrito', 'finalizado', 'retirado', 'descalificado') NOT NULL DEFAULT 'inscrito',
  fecha_carrera DATE NOT NULL
);