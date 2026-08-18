-- Ejercicio 013 - Intermedio - Tablas Puente Catálogo Películas de Miedo

-- Tabla de películas
CREATE TABLE `ejercicio-013-int-peliculas` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    director VARCHAR(50) NOT NULL,
    año INT DEFAULT 2025,
    duracion INT DEFAULT 90
);

-- Tabla de categorías
CREATE TABLE `ejercicio-013-int-categorias` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL UNIQUE
);

-- Tabla puente (películas y categorías)
CREATE TABLE `ejercicio-013-int_pelicula_categoria` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pelicula_id INT,
    categoria_id INT,
    FOREIGN KEY (pelicula_id) REFERENCES `ejercicio-013-int-peliculas`(id),
    FOREIGN KEY (categoria_id) REFERENCES `ejercicio-013-int-categorias`(id)
);