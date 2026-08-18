-- Ejercicio 013 - Básico - Filtros por Estado Catálogo Películas de Miedo
CREATE TABLE `ejercicio-013-bas-peliculas` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    director VARCHAR(50) NOT NULL,
    año INT DEFAULT 2025,
    genero VARCHAR(30) DEFAULT 'terror',
    duracion INT DEFAULT 90,
    calificacion DECIMAL(3,2) DEFAULT 0,
    estado VARCHAR(20) DEFAULT 'disponible',
    precio DECIMAL(10,2) DEFAULT 0
);