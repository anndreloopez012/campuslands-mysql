DROP DATABASE IF EXISTS db_carreras_urbanas_irma;
CREATE DATABASE db_carreras_urbanas_irma;
USE db_carreras_urbanas_irma;

CREATE TABLE participantes_carrera (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_corredor VARCHAR(60) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    distancia_km INT NOT NULL CHECK (distancia_km IN (5, 10, 21)),
    costo_inscripcion DECIMAL(10,2) NOT NULL,
    estado_pago VARCHAR(20) NOT NULL DEFAULT 'Pagado' CHECK (estado_pago IN ('Pagado', 'Pendiente'))
);