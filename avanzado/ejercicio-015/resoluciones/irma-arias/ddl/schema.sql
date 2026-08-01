-- DDL: Estructura avanzada para la Biblioteca Gamer con relación simple
DROP DATABASE IF EXISTS db_biblioteca_gamer;
CREATE DATABASE db_biblioteca_gamer;
USE db_biblioteca_gamer;

CREATE TABLE plataformas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_plataforma VARCHAR(40) NOT NULL UNIQUE,
    fabricante VARCHAR(40) NOT NULL
);

CREATE TABLE juegos_gamer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_juego VARCHAR(20) NOT NULL UNIQUE,
    titulo VARCHAR(70) NOT NULL,
    id_plataforma INT NOT NULL,
    precio_dolares DECIMAL(10,2) NOT NULL,
    horas_jugadas INT NOT NULL DEFAULT 0,
    estado ENUM('disponible', 'jugando', 'completado', 'archivado') DEFAULT 'disponible',
    
    -- Restricciones y Llave Foránea
    CONSTRAINT fk_juego_plataforma FOREIGN KEY (id_plataforma) REFERENCES plataformas(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_precio_juego CHECK (precio_dolares >= 0),
    CONSTRAINT chk_horas_juego CHECK (horas_jugadas >= 0)
);