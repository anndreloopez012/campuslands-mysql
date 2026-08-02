DROP DATABASE IF EXISTS kickboxing_db;
CREATE DATABASE kickboxing_db;
USE kickboxing_db;

CREATE TABLE gimnasios (
    id_gimnasio INT AUTO_INCREMENT PRIMARY KEY,
    nombre_gimnasio VARCHAR(60) NOT NULL,
    ciudad VARCHAR(40) NOT NULL,
    entrenador_principal VARCHAR(50) NOT NULL
);

CREATE TABLE categorias_peso (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(40) NOT NULL,
    limite_peso_kg DECIMAL(5,2) UNSIGNED NOT NULL
);

CREATE TABLE peleadores_kickboxing (
    id_peleador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_peleador VARCHAR(60) NOT NULL,
    edad INT UNSIGNED CHECK (edad BETWEEN 16 AND 50),
    peleas_ganadas INT UNSIGNED DEFAULT 0,
    peleas_perdidas INT UNSIGNED DEFAULT 0,
    id_gimnasio INT NOT NULL,
    id_categoria INT NOT NULL,
    estado_peleador ENUM('activo', 'lesionado', 'suspendido', 'retirado') DEFAULT 'activo',
    FOREIGN KEY (id_gimnasio) REFERENCES gimnasios(id_gimnasio) ON DELETE CASCADE,
    FOREIGN KEY (id_categoria) REFERENCES categorias_peso(id_categoria) ON DELETE CASCADE
);
