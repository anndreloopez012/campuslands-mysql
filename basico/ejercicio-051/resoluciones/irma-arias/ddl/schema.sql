-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_dibujo_digital;
CREATE DATABASE db_dibujo_digital;
USE db_dibujo_digital;

-- Tabla principal: Obras y Proyectos de Dibujo Digital
CREATE TABLE proyectos_dibujo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo_obra VARCHAR(60) NOT NULL,
    software_usado VARCHAR(40) NOT NULL, -- Ej: Procreate, Photoshop, Clip Studio Paint, Illustrator
    capas_totales INT NOT NULL,
    tiempo_horas DECIMAL(5,1) NOT NULL,
    precio_comision_usd DECIMAL(8,2) NOT NULL,
    estado ENUM('completado', 'en_progreso', 'revision', 'pausado') DEFAULT 'en_progreso',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_capas CHECK (capas_totales > 0),
    CONSTRAINT chk_tiempo_dibujo CHECK (tiempo_horas > 0),
    CONSTRAINT chk_precio_comision CHECK (precio_comision_usd >= 0)
);