-- Campuslands MySQL - avanzado ejercicio 057
-- Resolucion: maria-montepeque
-- Tema: videojuego de accion y aventura
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS duelos_jefe_avanzado;

CREATE TABLE duelos_jefe_avanzado (
  id_duelo INT AUTO_INCREMENT PRIMARY KEY,
  jugador VARCHAR(80) NOT NULL,
  jefe VARCHAR(80) NOT NULL,
  danio_infligido INT NOT NULL,
  resultado ENUM('victoria','derrota') NOT NULL,
  duracion_seg INT NOT NULL,
  fecha DATE NOT NULL,
  CONSTRAINT chk_duelos_jefe_avanzado_danio CHECK (danio_infligido > 0),
  CONSTRAINT chk_duelos_jefe_avanzado_duracion CHECK (duracion_seg > 0)
);
