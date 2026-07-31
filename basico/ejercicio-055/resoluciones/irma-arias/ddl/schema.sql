-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_laboratorio_quimico;
CREATE DATABASE db_laboratorio_quimico;
USE db_laboratorio_quimico;

-- Tabla principal: Fórmulas y Compuestos Químicos
CREATE TABLE formulas_quimicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_compuesto VARCHAR(60) NOT NULL,
    formula_molecular VARCHAR(40) NOT NULL,
    categoria VARCHAR(35) NOT NULL, -- Ej: Ácido, Base, Sal, Órganico, Polímero
    cantidad_gramos DECIMAL(8,2) NOT NULL,
    costo_produccion_usd DECIMAL(10,2) NOT NULL,
    estado ENUM('activo', 'en_pruebas', 'obsoleto', 'suspendido') DEFAULT 'activo',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_cantidad_gramos CHECK (cantidad_gramos > 0),
    CONSTRAINT chk_costo_produccion CHECK (costo_produccion_usd > 0)
);