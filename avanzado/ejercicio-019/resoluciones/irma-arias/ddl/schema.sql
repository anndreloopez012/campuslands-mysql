-- DDL: Estructura avanzada para Paracaidismo (INSERT y restricciones)
DROP DATABASE IF EXISTS db_paracaidismo;
CREATE DATABASE db_paracaidismo;
USE db_paracaidismo;

CREATE TABLE saltos_paracaidismo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_salto VARCHAR(20) NOT NULL UNIQUE,
    nombre_paracaidista VARCHAR(60) NOT NULL,
    modalidad VARCHAR(30) NOT NULL,
    altura_pies INT NOT NULL,
    precio_dolares DECIMAL(10,2) NOT NULL,
    estado ENUM('programado', 'completado', 'en_espera', 'cancelado') DEFAULT 'programado',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_altura_salto CHECK (altura_pies >= 1000 AND altura_pies <= 25000),
    CONSTRAINT chk_precio_salto CHECK (precio_dolares > 0)
);