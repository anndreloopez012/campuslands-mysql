-- Campuslands MySQL - Avanzado Ejercicio 009
-- Tema: Bloqueos (Locks)

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS peleadores;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE peleadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    victorias INT NOT NULL DEFAULT 0,
    derrotas INT NOT NULL DEFAULT 0,
    bolsa DECIMAL(10,2) NOT NULL,
    estado ENUM('Activo','Suspendido','Retirado') NOT NULL DEFAULT 'Activo',

    CHECK (edad >= 18),
    CHECK (victorias >= 0),
    CHECK (derrotas >= 0),
    CHECK (bolsa >= 0)
);