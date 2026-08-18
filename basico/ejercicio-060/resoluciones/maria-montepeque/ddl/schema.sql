-- Campuslands MySQL - basico ejercicio 060
-- Resolucion: maria-montepeque
-- Tema: equipo de streaming
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS directos_basico;
DROP TABLE IF EXISTS creadores_basico;

CREATE TABLE creadores_basico (
  id_creador INT AUTO_INCREMENT PRIMARY KEY,
  nombre_canal VARCHAR(120) NOT NULL UNIQUE,
  categoria_principal ENUM('juegos','musica','arte','programacion','variedad') NOT NULL,
  seguidores INT NOT NULL DEFAULT 0,
  CONSTRAINT chk_creadores_basico_seguidores CHECK (seguidores >= 0)
);

-- Relacion simple 1 a N: cada directo pertenece a un solo creador, y
-- un creador puede tener muchos directos.
CREATE TABLE directos_basico (
  id_directo INT AUTO_INCREMENT PRIMARY KEY,
  id_creador INT NOT NULL,
  titulo VARCHAR(150) NOT NULL,
  duracion_min INT NOT NULL,
  espectadores_pico INT NOT NULL,
  fecha DATE NOT NULL,
  CONSTRAINT fk_directos_basico_creador FOREIGN KEY (id_creador) REFERENCES creadores_basico (id_creador),
  CONSTRAINT chk_directos_basico_duracion CHECK (duracion_min > 0),
  CONSTRAINT chk_directos_basico_espectadores CHECK (espectadores_pico >= 0)
);
