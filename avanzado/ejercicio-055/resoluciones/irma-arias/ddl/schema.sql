DROP DATABASE IF EXISTS formulas_quimicas_db;
CREATE DATABASE formulas_quimicas_db;
USE formulas_quimicas_db;

CREATE TABLE formulas_quimicas (
    id_formula INT AUTO_INCREMENT PRIMARY KEY,
    nombre_compuesto VARCHAR(100) NOT NULL,
    tipo_enlace VARCHAR(50) NOT NULL,
    cantidad_atomos INT UNSIGNED CHECK (cantidad_atomos > 0),
    costo_produccion_usd DECIMAL(10,2) CHECK (costo_produccion_usd >= 0),
    pureza_porcentaje DECIMAL(5,2) CHECK (pureza_porcentaje > 0 AND pureza_porcentaje <= 100),
    estado ENUM('sintetizado', 'en_pruebas', 'descartado') DEFAULT 'sintetizado'
);
