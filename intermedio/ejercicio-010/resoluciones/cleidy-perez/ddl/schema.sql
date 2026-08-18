-- Campuslands MySQL - intermedio ejercicio 010
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Corredores (
    corredor_id INT AUTO_INCREMENT PRIMARY KEY,
    alias VARCHAR(50) NOT NULL UNIQUE,
    correo VARCHAR(100) NOT NULL UNIQUE,
    numero_competencia INT NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Vehiculos (
    vehiculo_id INT AUTO_INCREMENT PRIMARY KEY,
    corredor_id INT NOT NULL UNIQUE,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    FOREIGN KEY (corredor_id) REFERENCES Corredores(corredor_id) ON DELETE CASCADE
);
