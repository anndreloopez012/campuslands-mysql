DROP DATABASE IF EXISTS saga_ciencia_ficcion_db;
CREATE DATABASE saga_ciencia_ficcion_db;
USE saga_ciencia_ficcion_db;

CREATE TABLE sistemas_estelares (
    id_sistema INT AUTO_INCREMENT PRIMARY KEY,
    nombre_sistema VARCHAR(60) NOT NULL,
    sector_galactico VARCHAR(40) NOT NULL
);

CREATE TABLE facciones (
    id_faccion INT AUTO_INCREMENT PRIMARY KEY,
    nombre_faccion VARCHAR(60) NOT NULL,
    lider_faccion VARCHAR(60) NOT NULL
);

CREATE TABLE peliculas_saga (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo_pelicula VARCHAR(80) NOT NULL,
    anio_estreno INT UNSIGNED CHECK (anio_estreno BETWEEN 1970 AND 2040),
    presupuesto_millones DECIMAL(5,2) UNSIGNED CHECK (presupuesto_millones BETWEEN 1.0 AND 500.0),
    calificacion_critica DECIMAL(3,1) UNSIGNED CHECK (calificacion_critica BETWEEN 1.0 AND 10.0),
    id_sistema INT NOT NULL,
    id_faccion INT NOT NULL,
    estado_saga ENUM('canon', 'leyenda', 'alternativo') DEFAULT 'canon',
    FOREIGN KEY (id_sistema) REFERENCES sistemas_estelares(id_sistema) ON DELETE CASCADE,
    FOREIGN KEY (id_faccion) REFERENCES facciones(id_faccion) ON DELETE CASCADE
);

-- Vistas Simples Requeridas
CREATE VIEW vw_peliculas_canon AS
SELECT p.titulo_pelicula, p.anio_estreno, s.nombre_sistema, f.nombre_faccion, p.calificacion_critica
FROM peliculas_saga p
JOIN sistemas_estelares s ON p.id_sistema = s.id_sistema
JOIN facciones f ON p.id_faccion = f.id_faccion
WHERE p.estado_saga = 'canon';

CREATE VIEW vw_presupuesto_alto AS
SELECT p.titulo_pelicula, p.presupuesto_millones, p.calificacion_critica
FROM peliculas_saga p
WHERE p.presupuesto_millones >= 150.00;
