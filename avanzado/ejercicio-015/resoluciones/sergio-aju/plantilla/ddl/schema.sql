-- Campuslands MySQL - avanzado ejercicio 015
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS avanzado_ejercicio_015;

CREATE TABLE avanzado_ejercicio_015 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL, -- Título del videojuego
  categoria VARCHAR(80) NOT NULL, -- Género (Ej: 'RPG', 'Shooter', 'Estrategia', 'Indie', 'Deportes')
  puntaje DECIMAL(10,2) NOT NULL DEFAULT 0, -- Calificación o puntaje de la crítica/jugadores
  estado ENUM('activo','revision','inactivo') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  -- Índices para optimizar búsquedas frecuentes por categoría y estado
  INDEX idx_categoria (categoria),
  INDEX idx_estado (estado),
  INDEX idx_puntaje (puntaje)
);