CREATE DATABASE IF NOT EXISTS db_kickboxing;
USE db_kickboxing;

DROP TABLE IF EXISTS combates;
DROP TABLE IF EXISTS atletas;

CREATE TABLE atletas (
    id_atleta INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    categoria_peso VARCHAR(40) NOT NULL,
    peleas_ganadas INT NOT NULL DEFAULT 0,
    activo TINYINT(1) NOT NULL DEFAULT 1 -- 1 = Activo, 0 = Inactivo / Retirado
);

CREATE TABLE combates (
    id_combate INT AUTO_INCREMENT PRIMARY KEY,
    id_atleta INT NOT NULL,
    adversario VARCHAR(60) NOT NULL,
    resultado VARCHAR(20) NOT NULL,
    CONSTRAINT fk_atleta_combate FOREIGN KEY (id_atleta) REFERENCES atletas(id_atleta)
        ON DELETE CASCADE ON UPDATE CASCADE
);