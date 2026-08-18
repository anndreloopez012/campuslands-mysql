CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS kickboxing_peleadores_fk;
DROP TABLE IF EXISTS kickboxing_gimnasios;

CREATE TABLE kickboxing_gimnasios (
  id_gimnasio INT AUTO_INCREMENT PRIMARY KEY,
  nombre_gimnasio VARCHAR(60) NOT NULL UNIQUE,
  ciudad VARCHAR(50) NOT NULL,
  estado ENUM('activo','cerrado') NOT NULL DEFAULT 'activo'
);

CREATE TABLE kickboxing_peleadores_fk (
  id_peleador INT AUTO_INCREMENT PRIMARY KEY,
  nombre_peleador VARCHAR(50) NOT NULL,
  id_gimnasio INT NOT NULL,
  categoria_peso VARCHAR(30) NOT NULL,
  estado ENUM('activo','retirado') NOT NULL DEFAULT 'activo',
  -- RESTRICT: no se puede borrar un gimnasio si aun tiene peleadores asociados
  CONSTRAINT fk_peleador_gimnasio FOREIGN KEY (id_gimnasio)
    REFERENCES kickboxing_gimnasios(id_gimnasio)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);