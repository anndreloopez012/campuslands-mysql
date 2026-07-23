-- Campuslands MySQL - basico ejercicio 003
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS skin;

CREATE TABLE skin(
  id INT AUTO_INCREMENT PRIMARY KEY,
  skin VARCHAR(120) NOT NULL,
  juego VARCHAR(80) NOT NULL,
  puntaje DECIMAL(10,2) NOT NULL DEFAULT 0,
  estado ENUM('activo','revision','inactivo') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
