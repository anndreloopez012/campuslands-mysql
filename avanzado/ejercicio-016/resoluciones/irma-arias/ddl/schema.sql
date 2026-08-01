-- DDL: Estructura avanzada para el Restaurante de Comida Urbana
DROP DATABASE IF EXISTS db_comida_urbana;
CREATE DATABASE db_comida_urbana;
USE db_comida_urbana;

CREATE TABLE menu_urbano (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_producto VARCHAR(20) NOT NULL UNIQUE,
    nombre_plato VARCHAR(60) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    precio_dolares DECIMAL(8,2) NOT NULL,
    calias_calorias INT NOT NULL,
    estado ENUM('disponible', 'agotado', 'en_oferta', 'descontinuado') DEFAULT 'disponible',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_precio_urbano CHECK (precio_dolares > 0),
    CONSTRAINT chk_calorias CHECK (calias_calorias > 0)
);