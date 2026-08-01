-- DDL: Estructura avanzada para Garaje de Motos (INSERT y Gestión de Datos)
DROP DATABASE IF EXISTS db_garaje_motos;
CREATE DATABASE db_garaje_motos;
USE db_garaje_motos;

CREATE TABLE motos_garaje (
    id INT AUTO_INCREMENT PRIMARY KEY,
    placa_moto VARCHAR(10) NOT NULL UNIQUE,
    marca_moto VARCHAR(40) NOT NULL,
    modelo_moto VARCHAR(50) NOT NULL,
    cilindrada_cc INT NOT NULL,
    tarifa_dia DECIMAL(10,2) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    estado_moto ENUM('estacionada', 'en_mantenimiento', 'en_ruta', 'retirada') DEFAULT 'estacionada',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_cilindrada_cc CHECK (cilindrada_cc > 0),
    CONSTRAINT chk_tarifa_dia CHECK (tarifa_dia > 0)
);