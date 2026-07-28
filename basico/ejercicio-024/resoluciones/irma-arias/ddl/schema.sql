DROP DATABASE IF EXISTS db_soldadura_industrial_irma;
CREATE DATABASE db_soldadura_industrial_irma;
USE db_soldadura_industrial_irma;

CREATE TABLE trabajos_soldadura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_pieza VARCHAR(50) NOT NULL,
    proceso_soldadura VARCHAR(30) NOT NULL CHECK (proceso_soldadura IN ('SMAW', 'GMAW', 'GTAW', 'FCAW', 'SAW')),
    espesor_mm DECIMAL(6,2) NOT NULL CHECK (espesor_mm > 0.00),
    amperaje INT NOT NULL CHECK (amperaje > 0),
    estado_inspeccion VARCHAR(20) NOT NULL DEFAULT 'Aprobado' CHECK (estado_inspeccion IN ('Aprobado', 'Rechazado', 'Pendiente'))
);