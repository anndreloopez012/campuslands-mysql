-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_biblioteca_gamer;
CREATE DATABASE db_biblioteca_gamer;
USE db_biblioteca_gamer;

-- Tabla padre: Plataformas de Videojuegos
CREATE TABLE plataformas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_plataforma VARCHAR(50) NOT NULL UNIQUE,
    fabricante VARCHAR(50) NOT NULL,
    anio_lanzamiento INT NOT NULL,
    CONSTRAINT chk_anio_plat CHECK (anio_lanzamiento >= 1970 AND anio_lanzamiento <= 2030)
);

-- Tabla hija: Videojuegos de la Biblioteca Gamer (Relación 1 a N con plataformas)
CREATE TABLE videojuegos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(80) NOT NULL,
    plataforma_id INT NOT NULL,
    genero VARCHAR(40) NOT NULL, -- Ej: RPG, Acción, Estrategia, Shooter
    precio DECIMAL(8,2) NOT NULL,
    horas_jugadas DECIMAL(6,1) NOT NULL DEFAULT 0.0,
    estado ENUM('completado', 'jugando', 'pendiente', 'abandonado') DEFAULT 'pendiente',
    
    -- Restricciones de validación y llave foránea
    CONSTRAINT fk_videojuego_plataforma FOREIGN KEY (plataforma_id) REFERENCES plataformas(id) ON DELETE CASCADE,
    CONSTRAINT chk_precio CHECK (precio >= 0),
    CONSTRAINT chk_horas CHECK (horas_jugadas >= 0)
);