DROP DATABASE IF EXISTS db_saga_scifi_irma;
CREATE DATABASE db_saga_scifi_irma;
USE db_saga_scifi_irma;

CREATE TABLE entregas_scifi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo_obra VARCHAR(80) NOT NULL,
    tipo_contenido VARCHAR(30) NOT NULL CHECK (tipo_contenido IN ('Película', 'Libro', 'Serie', 'Comic', 'Videojuego')),
    fecha_lanzamiento DATE NOT NULL,
    recaudacion_millones DECIMAL(10,2) NOT NULL CHECK (recaudacion_millones >= 0.00),
    estado_canon VARCHAR(20) NOT NULL DEFAULT 'Canon' CHECK (estado_canon IN ('Canon', 'No Canon'))
);