-- DDL: Estructura avanzada para Torneo Esports MOBA (Creación de Tabla)
DROP DATABASE IF EXISTS db_torneo_moba;
CREATE DATABASE db_torneo_moba;
USE db_torneo_moba;

CREATE TABLE equipos_moba (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_equipo VARCHAR(20) NOT NULL UNIQUE,
    nombre_equipo VARCHAR(60) NOT NULL,
    region_competitiva VARCHAR(30) NOT NULL,
    victorias INT NOT NULL DEFAULT 0,
    derrotas INT NOT NULL DEFAULT 0,
    premio_acumulado DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    estado_equipo ENUM('clasificado', 'en_competencia', 'eliminado', 'campeon') DEFAULT 'clasificado',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_victorias CHECK (victorias >= 0),
    CONSTRAINT chk_derrotas CHECK (derrotas >= 0),
    CONSTRAINT chk_premio_acumulado CHECK (premio_acumulado >= 0)
);