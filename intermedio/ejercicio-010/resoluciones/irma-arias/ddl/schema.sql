DROP DATABASE IF EXISTS carreras_urbanas_db;
CREATE DATABASE carreras_urbanas_db;
USE carreras_urbanas_db;

CREATE TABLE categorias_carrera (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    distancia_km DECIMAL(5,2) CHECK (distancia_km > 0)
);

CREATE TABLE corredores_urbanos (
    id_corredor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_corredor VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    dorsal INT UNIQUE NOT NULL CHECK (dorsal > 0),
    id_categoria INT NOT NULL,
    estado ENUM('inscrito', 'finalizado', 'retirado') DEFAULT 'inscrito',
    FOREIGN KEY (id_categoria) REFERENCES categorias_carrera(id_categoria) ON DELETE CASCADE
);
