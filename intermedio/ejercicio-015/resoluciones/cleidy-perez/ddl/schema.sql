-- Campuslands MySQL - intermedio ejercicio 015
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Plataformas (
    plataforma_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    desarrollador VARCHAR(50) NOT NULL
);

CREATE TABLE Videojuegos (
    juego_id INT AUTO_INCREMENT PRIMARY KEY,
    plataforma_id INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    horas_jugadas INT NOT NULL CHECK (horas_jugadas >= 0),
    FOREIGN KEY (plataforma_id) REFERENCES Plataformas(plataforma_id) ON DELETE CASCADE
);
