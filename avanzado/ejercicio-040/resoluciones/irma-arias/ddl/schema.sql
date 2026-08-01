-- DDL: Estructura avanzada para Carreras Urbanas (COUNT y SUM)
DROP DATABASE IF EXISTS db_carreras_urbanas;
CREATE DATABASE db_carreras_urbanas;
USE db_carreras_urbanas;

CREATE TABLE carreras_urbanas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_carrera VARCHAR(10) NOT NULL UNIQUE,
    nombre_carrera VARCHAR(60) NOT NULL,
    distancia_km DECIMAL(5,2) NOT NULL,
    participantes_inscritos INT NOT NULL DEFAULT 0,
    recaudacion_total DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    estado_carrera ENUM('abierta', 'en_curso', 'finalizada', suspedida) DEFAULT 'abierta',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_distancia CHECK (distancia_km > 0),
    CONSTRAINT chk_participantes CHECK (participantes_inscritos >= 0),
    CONSTRAINT chk_recaudacion CHECK (recaudacion_total >= 0)
);