-- Campuslands MySQL - intermedio ejercicio 016
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL UNIQUE,
    area_cocina VARCHAR(50) NOT NULL
);

CREATE TABLE Platillos (
    platillo_id INT AUTO_INCREMENT PRIMARY KEY,
    categoria_id INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(6,2) NOT NULL CHECK (precio > 0),
    es_vegetariano BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (categoria_id) REFERENCES Categorias(categoria_id) ON DELETE CASCADE
);