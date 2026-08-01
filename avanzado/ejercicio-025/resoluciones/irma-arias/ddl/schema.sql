-- DDL: Estructura avanzada para Laboratorio de Fórmulas Químicas (COUNT y SUM)
DROP DATABASE IF EXISTS db_laboratorio_quimico;
CREATE DATABASE db_laboratorio_quimico;
USE db_laboratorio_quimico;

CREATE TABLE formulas_quimicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_formula VARCHAR(20) NOT NULL UNIQUE,
    nombre_compuesto VARCHAR(60) NOT NULL,
    clasificacion_quimica VARCHAR(30) NOT NULL,
    numero_atomos_totales INT NOT NULL,
    volumen_producido_ml DECIMAL(10,2) NOT NULL,
    estado_formula ENUM('experimental', 'en_sintesis', 'validado', 'catalogado') DEFAULT 'experimental',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_atomos_totales CHECK (numero_atomos_totales > 0),
    CONSTRAINT chk_volumen_ml CHECK (volumen_producido_ml >= 0)
);