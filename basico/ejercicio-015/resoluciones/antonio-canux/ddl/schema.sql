-- Campuslands MySQL - basico ejercicio 015
-- Contexto: Modulo de datos para biblioteca gamer (Relaciones Simples).
CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS basico_ejercicio_015_juegos;
DROP TABLE IF EXISTS basico_ejercicio_015_plataformas;

CREATE TABLE basico_ejercicio_015_plataformas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  fabricante VARCHAR(50) NOT NULL
);

CREATE TABLE basico_ejercicio_015_juegos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  plataforma_id INT NOT NULL,
  titulo VARCHAR(150) NOT NULL,
  genero VARCHAR(50) NOT NULL,
  anio_lanzamiento INT NOT NULL,
  FOREIGN KEY (plataforma_id) REFERENCES basico_ejercicio_015_plataformas(id)
);