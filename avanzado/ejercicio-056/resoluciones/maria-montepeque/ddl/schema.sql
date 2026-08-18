-- Campuslands MySQL - avanzado ejercicio 056
-- Resolucion: maria-montepeque
-- Tema: videojuego RPG
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS talentos_avanzado;

CREATE TABLE talentos_avanzado (
  id_talento INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL UNIQUE,
  clase ENUM('guerrero','mago','arquero','picaro','clerigo') NOT NULL,
  nivel_requerido INT NOT NULL,
  id_talento_previo INT NULL,
  CONSTRAINT fk_talentos_avanzado_previo FOREIGN KEY (id_talento_previo) REFERENCES talentos_avanzado (id_talento),
  CONSTRAINT chk_talentos_avanzado_nivel CHECK (nivel_requerido BETWEEN 1 AND 100)
);
