
DROP DATABASE IF EXISTS db_arquitectura_3d_irma;
CREATE DATABASE db_arquitectura_3d_irma;
USE db_arquitectura_3d_irma;

CREATE TABLE proyectos_arquitectura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_proyecto VARCHAR(80) NOT NULL,
    software_render VARCHAR(30) NOT NULL CHECK (software_render IN ('Lumion', 'V-Ray', 'Enscape', 'Twinmotion', 'Corona')),
    area_construccion_m2 DECIMAL(8,2) NOT NULL CHECK (area_construccion_m2 > 0.00),
    presupuesto_usd DECIMAL(10,2) NOT NULL CHECK (presupuesto_usd > 0.00),
    estado_proyecto VARCHAR(20) NOT NULL DEFAULT 'Diseño' CHECK (estado_proyecto IN ('Diseño', 'Renderizado', 'Aprobado', 'Entregado'))
);