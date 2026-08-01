-- DDL: Estructura avanzada para Autos Hiperdeportivos (WHERE y Filtrado)
DROP DATABASE IF EXISTS db_hiperdeportivos;
CREATE DATABASE db_hiperdeportivos;
USE db_hiperdeportivos;

CREATE TABLE autos_hiperdeportivos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_chasis VARCHAR(20) NOT NULL UNIQUE,
    marca VARCHAR(40) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    velocidad_maxima_kmh INT NOT NULL,
    precio_millones DECIMAL(10,2) NOT NULL,
    anio_fabricacion INT NOT NULL,
    estado_disponibilidad ENUM('disponible', 'reservado', 'vendido', 'exhibicion') DEFAULT 'disponible',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_velocidad CHECK (velocidad_maxima_kmh > 0),
    CONSTRAINT chk_precio CHECK (precio_millones > 0),
    CONSTRAINT chk_anio CHECK (anio_fabricacion >= 2000)
);