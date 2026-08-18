-- Campuslands MySQL - intermedio ejercicio 009
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Peleadores (
    peleador_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    alias VARCHAR(50) NULL,
    categoria_peso VARCHAR(30) NOT NULL,
    gimnasio VARCHAR(50) NOT NULL
);

CREATE TABLE Combates (
    combate_id INT AUTO_INCREMENT PRIMARY KEY,
    peleador_rojo_id INT NOT NULL,
    peleador_azul_id INT NOT NULL,
    ganador_id INT NULL,
    metodo VARCHAR(30) NOT NULL,
    fecha_combate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (peleador_rojo_id) REFERENCES Peleadores(peleador_id) ON DELETE CASCADE,
    FOREIGN KEY (peleador_azul_id) REFERENCES Peleadores(peleador_id) ON DELETE CASCADE,
    FOREIGN KEY (ganador_id) REFERENCES Peleadores(peleador_id) ON DELETE SET NULL
);