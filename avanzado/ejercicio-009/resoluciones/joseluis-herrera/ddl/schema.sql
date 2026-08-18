CREATE DATABASE IF NOT EXISTS db_kickboxing;
USE db_kickboxing;

DROP TABLE IF EXISTS combates;
DROP TABLE IF EXISTS atletas;

CREATE TABLE atletas (
    id_atleta INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    categoria_peso VARCHAR(40) NOT NULL,
    activo TINYINT(1) NOT NULL DEFAULT 1
);

CREATE TABLE combates (
    id_combate INT AUTO_INCREMENT PRIMARY KEY,
    id_atleta INT NOT NULL,
    adversario VARCHAR(60) NOT NULL,
    resultado VARCHAR(20) NOT NULL,
    CONSTRAINT fk_atleta_combate FOREIGN KEY (id_atleta) 
        REFERENCES atletas(id_atleta)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE historial_lesiones (
    id_lesion INT AUTO_INCREMENT PRIMARY KEY,
    id_atleta INT NOT NULL,
    tipo_lesion VARCHAR(60) NOT NULL,
    gravedad VARCHAR(30) NOT NULL,
    CONSTRAINT fk_atleta_lesion FOREIGN KEY (id_atleta) 
        REFERENCES atletas(id_atleta)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);