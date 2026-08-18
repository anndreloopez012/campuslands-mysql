CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS kickboxing_inscripciones;

CREATE TABLE kickboxing_inscripciones (
  id_evento INT AUTO_INCREMENT PRIMARY KEY,
  nombre_evento VARCHAR(80) NOT NULL,
  cupo_total SMALLINT UNSIGNED NOT NULL,
  cupo_ocupado SMALLINT UNSIGNED NOT NULL DEFAULT 0,
  fecha_evento DATE NOT NULL,
  estado ENUM('abierto','cerrado','cancelado') NOT NULL DEFAULT 'abierto',
  CHECK (cupo_ocupado <= cupo_total)
) ENGINE=InnoDB;