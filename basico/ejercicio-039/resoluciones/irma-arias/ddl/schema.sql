-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_kickboxing;
CREATE DATABASE db_kickboxing;
USE db_kickboxing;

-- Tabla principal: Luchadores en la Academia de Kickboxing
CREATE TABLE luchadores_kickboxing (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_luchador VARCHAR(50) NOT NULL,
    categoria_peso VARCHAR(30) NOT NULL, -- Ej: Ligero, Wélter, Mediano, Pesado
    peleas_ganadas INT NOT NULL DEFAULT 0,
    peleas_perdidas INT NOT NULL DEFAULT 0,
    peso_kg DECIMAL(5,2) NOT NULL,
    estado ENUM('activo', 'inactivo', 'retirado') DEFAULT 'activo',
    fecha_inscripcion DATE NOT NULL,
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_ganadas_positivas CHECK (peleas_ganadas >= 0),
    CONSTRAINT chk_perdidas_positivas CHECK (peleas_perdidas >= 0),
    CONSTRAINT chk_peso_positivo CHECK (peso_kg > 0)
);