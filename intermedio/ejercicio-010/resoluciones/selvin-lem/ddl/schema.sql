CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS carreras_urbanas_pilotos_unique;

CREATE TABLE carreras_urbanas_pilotos_unique (
  id_piloto INT AUTO_INCREMENT PRIMARY KEY,
  nombre_piloto VARCHAR(50) NOT NULL,
  placa_vehiculo VARCHAR(15) NOT NULL,
  numero_corredor SMALLINT UNSIGNED NOT NULL,
  temporada VARCHAR(20) NOT NULL,
  estado ENUM('activo','sancionado') NOT NULL DEFAULT 'activo',
  -- UNIQUE simple: una placa no puede repetirse en toda la tabla
  CONSTRAINT uq_placa UNIQUE (placa_vehiculo),
  -- UNIQUE compuesto: el mismo numero de corredor puede repetirse entre temporadas distintas,
  -- pero no dos veces dentro de la MISMA temporada
  CONSTRAINT uq_numero_temporada UNIQUE (numero_corredor, temporada)
);