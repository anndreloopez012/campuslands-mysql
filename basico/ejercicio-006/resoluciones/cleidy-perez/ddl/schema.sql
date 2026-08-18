-- Campuslands MySQL - basico ejercicio 006
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS hiperdeportivos;

CREATE TABLE hiperdeportivos(
  id_auto INT AUTO_INCREMENT PRIMARY KEY,
  marca VARCHAR(120) NOT NULL,
  modelo VARCHAR(80) NOT NULL,
  motor VARCHAR (20) NOT NULL DEFAULT 'Híbrido',
  potencia_hp INT NOT NULL, 
  velocidad_max_kmh INT NOT NULL,
  precio_usd DECIMAL (12,2) NOT NULL,
  anio_licitacion DATE
);
ALTER TABLE hiperdeportivos MODIFY motor VARCHAR(50) NOT NULL;