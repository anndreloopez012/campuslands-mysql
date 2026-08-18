-- Ejercicio 013 - Avanzado - JSON Catálogo Películas de Miedo
CREATE TABLE `ejercicio-013-adv-peliculas` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    director VARCHAR(50) NOT NULL,
    año INT DEFAULT 2025,
    detalles JSON
);