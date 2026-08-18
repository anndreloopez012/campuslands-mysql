-- Campuslands MySQL - basico ejercicio 009
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS peleadores_kickboxing;

CREATE TABLE peleadores_kickboxing (
    id_peleador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_peleador VARCHAR(100) NOT NULL,
    apodo VARCHAR(50),
    categoria_peso ENUM('Pluma', 'Ligero', 'Wélter', 'Mediano', 'Pesado') NOT NULL,
    victorias INT DEFAULT 0,
    derrotas INT DEFAULT 0,
    nocauts_ko INT DEFAULT 0,
    fecha_nacimiento DATE NOT NULL
);
