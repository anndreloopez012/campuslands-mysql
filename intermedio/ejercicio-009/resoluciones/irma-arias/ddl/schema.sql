DROP DATABASE IF EXISTS kickboxing_db;
CREATE DATABASE kickboxing_db;
USE kickboxing_db;

CREATE TABLE categorias_peso (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    peso_limite_kg DECIMAL(5,2) CHECK (peso_limite_kg > 0)
);

CREATE TABLE luchadores_kickboxing (
    id_luchador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_luchador VARCHAR(100) NOT NULL,
    peleas_ganadas INT UNSIGNED DEFAULT 0,
    peleas_perdidas INT UNSIGNED DEFAULT 0,
    id_categoria INT NOT NULL,
    estado ENUM('activo', 'lesionado', 'retirado') DEFAULT 'activo',
    FOREIGN KEY (id_categoria) REFERENCES categorias_peso(id_categoria) ON DELETE CASCADE
);
