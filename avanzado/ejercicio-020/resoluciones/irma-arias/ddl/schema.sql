-- DDL: Estructura avanzada para Estudio de Tatuajes (Consultas SELECT y restricciones)
DROP DATABASE IF EXISTS db_estudio_tatuajes;
CREATE DATABASE db_estudio_tatuajes;
USE db_estudio_tatuajes;

CREATE TABLE citas_tatuajes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_cita VARCHAR(20) NOT NULL UNIQUE,
    nombre_cliente VARCHAR(60) NOT NULL,
    estilo_tatuaje VARCHAR(30) NOT NULL,
    horas_estimadas INT NOT NULL,
    precio_dolares DECIMAL(10,2) NOT NULL,
    estado ENUM('pendiente', 'en_proceso', 'completado', 'cancelado') DEFAULT 'pendiente',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_horas_cita CHECK (horas_estimadas > 0),
    CONSTRAINT chk_precio_tatuaje CHECK (precio_dolares > 0)
);