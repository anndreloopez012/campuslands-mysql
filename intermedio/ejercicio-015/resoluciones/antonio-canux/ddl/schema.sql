-- Campuslands MySQL - intermedio ejercicio 015
-- Contexto: Modulo de datos para biblioteca gamer (Carga de Datos / ETL).
CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS intermedio_ejercicio_015_juegos_staging;
DROP TABLE IF EXISTS intermedio_ejercicio_015_juegos_produccion;

-- Tabla de Produccion (Catalogo oficial de la biblioteca)
CREATE TABLE intermedio_ejercicio_015_juegos_produccion (
  codigo_sku VARCHAR(20) PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  desarrollador VARCHAR(100) NOT NULL,
  precio_usd DECIMAL(10,2) NOT NULL,
  ultima_actualizacion DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabla Staging (Tabla temporal para recibir cargas masivas de datos crudos)
CREATE TABLE intermedio_ejercicio_015_juegos_staging (
  codigo_sku VARCHAR(20) PRIMARY KEY,
  titulo VARCHAR(150),
  desarrollador VARCHAR(100),
  precio_usd DECIMAL(10,2)
);