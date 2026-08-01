-- DDL: Estructura avanzada para la Saga de Ciencia Ficción
DROP DATABASE IF EXISTS db_saga_scifi;
CREATE DATABASE db_saga_scifi;
USE db_saga_scifi;

CREATE TABLE eventos_scifi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_evento VARCHAR(20) NOT NULL UNIQUE,
    titulo_evento VARCHAR(70) NOT NULL,
    tipo_mision VARCHAR(30) NOT NULL,
    fecha_estelar DATE NOT NULL,
    duracion_dias INT NOT NULL,
    presupuesto_millones DECIMAL(10,2) NOT NULL,
    estado ENUM('planificada', 'en_curso', 'completada', 'cancelada') DEFAULT 'planificada',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_duracion_dias CHECK (duracion_dias > 0),
    CONSTRAINT chk_presupuesto CHECK (presupuesto_millones >= 0)
);