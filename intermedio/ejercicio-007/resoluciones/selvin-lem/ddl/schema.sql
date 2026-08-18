CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS liga_convocatorias;
DROP TABLE IF EXISTS liga_partidos_2fn;
DROP TABLE IF EXISTS liga_jugadores_2fn;

-- === DISEÑO INCORRECTO (referencia, NO se crea) ===
-- CREATE TABLE convocatoria_mal_diseñada (
--   id_partido INT,
--   id_jugador INT,
--   nombre_jugador VARCHAR(50),   -- depende SOLO de id_jugador, no de la clave completa <- VIOLA 2FN
--   posicion VARCHAR(20),         -- depende SOLO de id_jugador <- VIOLA 2FN
--   minutos_jugados SMALLINT,     -- depende de AMBOS (id_partido + id_jugador), correcto
--   goles_partido TINYINT,        -- depende de AMBOS, correcto
--   PRIMARY KEY (id_partido, id_jugador)
-- );

-- === DISEÑO CORRECTO (cumple 2FN) ===
CREATE TABLE liga_jugadores_2fn (
  id_jugador INT AUTO_INCREMENT PRIMARY KEY,
  nombre_jugador VARCHAR(50) NOT NULL,
  posicion ENUM('portero','defensa','mediocampo','delantero') NOT NULL,
  equipo VARCHAR(50) NOT NULL
);

CREATE TABLE liga_partidos_2fn (
  id_partido INT AUTO_INCREMENT PRIMARY KEY,
  rival VARCHAR(50) NOT NULL,
  fecha_partido DATE NOT NULL
);

-- Tabla de union: la clave compuesta solo tiene datos que dependen de AMBAS partes
CREATE TABLE liga_convocatorias (
  id_partido INT NOT NULL,
  id_jugador INT NOT NULL,
  minutos_jugados SMALLINT UNSIGNED NOT NULL DEFAULT 0,
  goles_partido TINYINT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (id_partido, id_jugador),
  CONSTRAINT fk_conv_partido FOREIGN KEY (id_partido) REFERENCES liga_partidos_2fn(id_partido),
  CONSTRAINT fk_conv_jugador FOREIGN KEY (id_jugador) REFERENCES liga_jugadores_2fn(id_jugador)
);