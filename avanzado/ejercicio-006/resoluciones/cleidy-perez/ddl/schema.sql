-- Campuslands MySQL - avanzado ejercicio 006
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Marcas (
    marca_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    pais_origen VARCHAR(50) NOT NULL
);

CREATE TABLE Hiperdeportivos (
    auto_id INT AUTO_INCREMENT PRIMARY KEY,
    marca_id INT NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    velocidad_max_kmh INT NOT NULL,
    potencia_hp INT NOT NULL,
    FOREIGN KEY (marca_id) REFERENCES Marcas(marca_id) ON DELETE CASCADE,
    INDEX idx_velocidad (velocidad_max_kmh)
);