-- Campuslands MySQL - avanzado ejercicio 009
-- Resolución por: Sergio Miranda Ajú
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS ejercicio_009_kickboxing_peleadores;

CREATE TABLE ejercicio_009_kickboxing_peleadores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  categoria_peso ENUM('Welter', 'Mediano', 'Semi-Pesado', 'Pesado') NOT NULL,
  victorias INT NOT NULL DEFAULT 0,
  derrotas INT NOT NULL DEFAULT 0,
  kos INT NOT NULL DEFAULT 0,
  bolsa_acumulada_usd DECIMAL(12,2) NOT NULL DEFAULT 0.00,
  estado ENUM('activo', 'retirado', 'suspendido') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;