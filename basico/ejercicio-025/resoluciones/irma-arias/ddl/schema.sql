
DROP DATABASE IF EXISTS db_laboratorio_quimico_irma;
CREATE DATABASE db_laboratorio_quimico_irma;
USE db_laboratorio_quimico_irma;

CREATE TABLE formulas_quimicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_formula VARCHAR(80) NOT NULL,
    tipo_compuesto VARCHAR(30) NOT NULL CHECK (tipo_compuesto IN ('Acido', 'Base', 'Sal', 'Organico', 'Oxido')),
    volumen_litros DECIMAL(8,2) NOT NULL CHECK (volumen_litros > 0.00),
    costo_produccion_usd DECIMAL(10,2) NOT NULL CHECK (costo_produccion_usd > 0.00),
    estado_formula VARCHAR(20) NOT NULL DEFAULT 'Activa' CHECK (estado_formula IN ('Activa', 'En Pruebas', 'Obsolescente'))
);