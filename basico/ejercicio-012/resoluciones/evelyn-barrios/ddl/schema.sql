-- Campuslands MySQL - basico ejercicio 012
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS canciones; -- Renombrado de basico_ejercicio_012 para mayor claridad

CREATE TABLE canciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL,
  artista VARCHAR(255) NOT NULL,
  album VARCHAR(255),
  genero VARCHAR(100) NOT NULL,
  duracion_segundos INT NOT NULL CHECK (duracion_segundos > 0), -- Validación: la duración debe ser positiva
  reproducciones BIGINT NOT NULL DEFAULT 0,
  fecha_lanzamiento DATE,
  estado ENUM('disponible','oculto','archivado') NOT NULL DEFAULT 'disponible',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
