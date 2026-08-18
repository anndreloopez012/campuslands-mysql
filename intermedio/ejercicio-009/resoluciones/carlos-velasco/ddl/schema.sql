-- Campuslands MySQL - Intermedio Ejercicio 009
-- Tema: FOREIGN KEY

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS peleas;
DROP TABLE IF EXISTS peleadores;
DROP TABLE IF EXISTS categorias;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    peso_maximo DECIMAL(5,2) NOT NULL,

    CHECK (peso_maximo > 0)
);

CREATE TABLE peleadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categoria_id INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    nacionalidad VARCHAR(50) NOT NULL,
    victorias INT NOT NULL DEFAULT 0,

    CONSTRAINT fk_peleador_categoria
        FOREIGN KEY (categoria_id)
        REFERENCES categorias(id),

    CHECK (edad >= 18),
    CHECK (victorias >= 0)
);

CREATE TABLE peleas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    peleador_id INT NOT NULL,
    rival VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    resultado ENUM('Victoria','Derrota','Empate') NOT NULL,

    CONSTRAINT fk_pelea_peleador
        FOREIGN KEY (peleador_id)
        REFERENCES peleadores(id)
);