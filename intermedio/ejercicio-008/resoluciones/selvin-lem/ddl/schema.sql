CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS futsal_jugadores_3fn;
DROP TABLE IF EXISTS futsal_equipos_3fn;

-- === DISEÑO INCORRECTO (referencia, NO se crea) ===
-- CREATE TABLE jugadores_mal_diseñada (
--   id_jugador INT PRIMARY KEY,
--   nombre_jugador VARCHAR(50),
--   id_equipo INT,
--   nombre_equipo VARCHAR(50),   -- depende de id_equipo, NO de id_jugador <- VIOLA 3FN
--   ciudad_equipo VARCHAR(50),   -- depende de id_equipo, NO de id_jugador <- VIOLA 3FN
--   estadio VARCHAR(60)          -- depende de id_equipo, NO de id_jugador <- VIOLA 3FN
-- );

-- === DISEÑO CORRECTO (cumple 3FN) ===
CREATE TABLE futsal_equipos_3fn (
  id_equipo INT AUTO_INCREMENT PRIMARY KEY,
  nombre_equipo VARCHAR(50) NOT NULL UNIQUE,
  ciudad VARCHAR(50) NOT NULL,
  estadio VARCHAR(60) NOT NULL
);

CREATE TABLE futsal_jugadores_3fn (
  id_jugador INT AUTO_INCREMENT PRIMARY KEY,
  nombre_jugador VARCHAR(50) NOT NULL,
  id_equipo INT NOT NULL,
  goles_temporada SMALLINT UNSIGNED NOT NULL DEFAULT 0,
  estado ENUM('activo','lesionado') NOT NULL DEFAULT 'activo',
  CONSTRAINT fk_jugador_equipo_3fn FOREIGN KEY (id_equipo) REFERENCES futsal_equipos_3fn(id_equipo)
);