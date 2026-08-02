DROP DATABASE IF EXISTS biblioteca_gamer_db;
CREATE DATABASE biblioteca_gamer_db;
USE biblioteca_gamer_db;

CREATE TABLE plataformas (
    id_plataforma INT AUTO_INCREMENT PRIMARY KEY,
    nombre_plataforma VARCHAR(50) NOT NULL,
    fabricante VARCHAR(50) NOT NULL
);

CREATE TABLE videojuegos (
    id_juego INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    id_plataforma INT NOT NULL,
    precio DECIMAL(6,2) CHECK (precio >= 0),
    calificacion DECIMAL(3,1) CHECK (calificacion >= 0 AND calificacion <= 10),
    estado ENUM('disponible', 'completado', 'pendiente') DEFAULT 'disponible',
    FOREIGN KEY (id_plataforma) REFERENCES plataformas(id_plataforma)
);
