-- DDL: Estructura avanzada para Viajes y Turismo (PRIMARY KEY y restricciones)
DROP DATABASE IF EXISTS db_viajes_turismo;
CREATE DATABASE db_viajes_turismo;
USE db_viajes_turismo;

CREATE TABLE paquetes_turisticos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_paquete VARCHAR(20) NOT NULL UNIQUE,
    destino VARCHAR(60) NOT NULL,
    continente VARCHAR(30) NOT NULL,
    duracion_dias INT NOT NULL,
    precio_dolares DECIMAL(10,2) NOT NULL,
    cupos_disponibles INT NOT NULL,
    estado ENUM('disponible', 'ultimos_cupos', 'sold_out', 'cancelado') DEFAULT 'disponible',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_duracion_viaje CHECK (duracion_dias > 0),
    CONSTRAINT chk_precio_viaje CHECK (precio_dolares > 0),
    CONSTRAINT chk_cupos_viaje CHECK (cupos_disponibles >= 0)
);