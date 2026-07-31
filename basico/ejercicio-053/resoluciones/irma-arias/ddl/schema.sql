-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_arquitectura_3d;
CREATE DATABASE db_arquitectura_3d;
USE db_arquitectura_3d;

-- Tabla principal: Proyectos y Modelados de Arquitectura 3D
CREATE TABLE proyectos_arquitectura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_proyecto VARCHAR(60) NOT NULL,
    tipo_inmueble VARCHAR(40) NOT NULL, -- Ej: Residencial, Comercial, Industrial, Paisajismo
    superficie_m2 DECIMAL(8,2) NOT NULL,
    presupuesto_usd DECIMAL(10,2) NOT NULL,
    software_bim VARCHAR(30) NOT NULL, -- Ej: Revit, Archicad, SketchUp, Rhino
    estado ENUM('borrador', 'en_desarrollo', 'revision_cliente', 'aprobado', 'finalizado') DEFAULT 'borrador',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_superficie CHECK (superficie_m2 > 0),
    CONSTRAINT chk_presupuesto CHECK (presupuesto_usd > 0)
);