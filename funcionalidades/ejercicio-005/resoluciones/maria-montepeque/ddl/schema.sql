-- funcionalidades/ejercicio-005 - maria-montepeque
-- Tematica: catalogo de peliculas de miedo
-- A proposito NO se crea ningun indice extra aqui (solo la PK).
-- Los indices se agregan en dql/consultas.sql para poder comparar el "antes" y el "despues".
USE campuslands_mysql;

DROP TABLE IF EXISTS peliculas_terror;

CREATE TABLE peliculas_terror (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    director VARCHAR(100) NOT NULL,
    subgenero VARCHAR(40) NOT NULL,
    anio_estreno YEAR NOT NULL,
    duracion_minutos SMALLINT NOT NULL,
    calificacion DECIMAL(3, 1) NOT NULL DEFAULT 0
);
