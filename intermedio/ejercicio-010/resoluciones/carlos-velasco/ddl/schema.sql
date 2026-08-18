-- Campuslands MySQL - Intermedio Ejercicio 010
-- Tema: UNIQUE

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS corredores;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE corredores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dorsal INT NOT NULL UNIQUE,
    dpi VARCHAR(20) NOT NULL UNIQUE,
    correo VARCHAR(120) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    ciudad VARCHAR(80) NOT NULL,
    categoria ENUM('5K','10K','21K') NOT NULL,
    tiempo TIME NOT NULL,
    estado ENUM('Inscrito','Finalizó','Descalificado') NOT NULL DEFAULT 'Inscrito',

    CHECK (dorsal > 0)
);