DROP DATABASE IF EXISTS db_biblioteca_gamer_irma;
CREATE DATABASE db_biblioteca_gamer_irma;
USE db_biblioteca_gamer_irma;

-- Tabla principal 1: Plataformas de videojuegos
CREATE TABLE plataformas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_plataforma VARCHAR(50) NOT NULL UNIQUE,
    fabricante VARCHAR(50) NOT NULL,
    anio_lanzamiento INT NOT NULL CHECK (anio_lanzamiento >= 1970)
);

-- Tabla principal 2: Videojuegos con relación simple (Foreign Key hacia plataformas)
CREATE TABLE videojuegos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(80) NOT NULL,
    genero VARCHAR(30) NOT NULL CHECK (genero IN ('Acccion', 'RPG', 'Deportes', 'Estrategia', 'Aventura', 'Indie')),
    precio DECIMAL(10,2) NOT NULL CHECK (precio >= 0.00),
    plataforma_id INT NOT NULL,
    estado_biblioteca VARCHAR(20) NOT NULL DEFAULT 'Comprado' CHECK (estado_biblioteca IN ('Comprado', 'Pendiente', 'Terminado')),
    CONSTRAINT fk_videojuego_plataforma FOREIGN KEY (plataforma_id) REFERENCES plataformas(id)
);