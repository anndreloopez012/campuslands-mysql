-- DDL: Estructura avanzada para Kickboxing (DELETE controlado y Eliminación de Datos)
DROP DATABASE IF EXISTS db_kickboxing;
CREATE DATABASE db_kickboxing;
USE db_kickboxing;

CREATE TABLE peleadores_kickboxing (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_peleador VARCHAR(10) NOT NULL UNIQUE,
    nombre_completo VARCHAR(60) NOT NULL,
    categoria_peso VARCHAR(30) NOT NULL,
    peleas_ganadas INT NOT NULL DEFAULT 0,
    peleas_perdidas INT NOT NULL DEFAULT 0,
    estado_peleador ENUM('activo', 'inactivo', 'retirado') DEFAULT 'activo',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_ganadas CHECK (peleas_ganadas >= 0),
    CONSTRAINT chk_perdidas CHECK (peleas_perdidas >= 0)
);