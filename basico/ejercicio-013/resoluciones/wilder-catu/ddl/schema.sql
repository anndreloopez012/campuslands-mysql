
USE campuslands_mysql;

DROP TABLE IF EXISTS peliculas_miedo;

CREATE TABLE peliculas_miedo (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    director VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    anio_lanzamiento YEAR NOT NULL,
    duracion_min INT NOT NULL CHECK (duracion_min > 0),
    calificacion DECIMAL(3,1) NOT NULL CHECK (calificacion BETWEEN 1 AND 10),
    estado ENUM('Disponible','Prestada','Mantenimiento') NOT NULL DEFAULT 'Disponible'
);