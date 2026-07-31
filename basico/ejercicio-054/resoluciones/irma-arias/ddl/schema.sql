-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_soldadura_industrial;
CREATE DATABASE db_soldadura_industrial;
USE db_soldadura_industrial;

-- Tabla principal: Cordones y Trabajos de Soldadura
CREATE TABLE trabajos_soldadura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_cordon VARCHAR(30) NOT NULL UNIQUE,
    tipo_proceso VARCHAR(30) NOT NULL, -- Ej: MIG, TIG, SMAW, FCAW
    material_base VARCHAR(40) NOT NULL, -- Ej: Acero Inoxidable, Acero al Carbono, Aluminio
    longitud_mm DECIMAL(8,2) NOT NULL,
    amperaje_usado INT NOT NULL,
    estado ENUM('aprobado', 'defectuoso', 'en_revision', 'rechazado') DEFAULT 'en_revision',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_longitud_cordon CHECK (longitud_mm > 0),
    CONSTRAINT chk_amperaje CHECK (amperaje_usado > 0)
);