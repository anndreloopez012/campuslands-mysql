DROP DATABASE IF EXISTS saga_scifi_db;
CREATE DATABASE saga_scifi_db;
USE saga_scifi_db;

CREATE TABLE peliculas_saga (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    director VARCHAR(100) NOT NULL,
    fecha_estreno DATE NOT NULL,
    recaudacion_millones DECIMAL(8,2) CHECK (recaudacion_millones >= 0),
    estado ENUM('estrenado', 'post-produccion', 'cancelado') DEFAULT 'estrenado'
);
