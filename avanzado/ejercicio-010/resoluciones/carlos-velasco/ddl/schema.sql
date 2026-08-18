-- Campuslands MySQL - Avanzado Ejercicio 010
-- Tema: Backup lógico

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS resultados;
DROP TABLE IF EXISTS corredores;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE corredores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ciudad VARCHAR(80) NOT NULL,
    categoria ENUM('5K','10K','21K') NOT NULL,
    correo VARCHAR(120) NOT NULL UNIQUE
);

CREATE TABLE resultados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    corredor_id INT NOT NULL,
    tiempo TIME NOT NULL,
    posicion INT NOT NULL,
    fecha_carrera DATE NOT NULL,

    CONSTRAINT fk_resultado_corredor
        FOREIGN KEY (corredor_id)
        REFERENCES corredores(id)
);