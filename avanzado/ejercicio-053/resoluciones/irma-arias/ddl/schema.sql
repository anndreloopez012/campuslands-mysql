DROP DATABASE IF EXISTS arquitectura_3d_db;
CREATE DATABASE arquitectura_3d_db;
USE arquitectura_3d_db;

CREATE TABLE proyectos_arquitectura (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_proyecto VARCHAR(100) NOT NULL,
    software_modelado VARCHAR(50) NOT NULL,
    area_metros2 DECIMAL(8,2) CHECK (area_metros2 > 0),
    costo_usd DECIMAL(10,2) CHECK (costo_usd >= 0),
    calificacion_cliente DECIMAL(3,1) CHECK (calificacion_cliente >= 0 AND calificacion_cliente <= 10),
    estado ENUM('completado', 'en_proceso', 'revision') DEFAULT 'en_proceso'
);
