-- Campuslands MySQL - avanzado ejercicio 006
-- Resolución por: Sergio Miranda Ajú
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS ejercicio_006_hiperdeportivos;

CREATE TABLE ejercicio_006_hiperdeportivos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  marca VARCHAR(80) NOT NULL,
  modelo VARCHAR(100) NOT NULL,
  caballos_fuerza INT NOT NULL,
  velocidad_maxima_kmh DECIMAL(6,2) NOT NULL,
  precio_usd DECIMAL(12,2) NOT NULL,
  estado_produccion ENUM('activo', 'descontinuado', 'concepto') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Creamos un índice para demostrar cómo EXPLAIN optimiza las búsquedas
CREATE INDEX idx_marca ON ejercicio_006_hiperdeportivos(marca);