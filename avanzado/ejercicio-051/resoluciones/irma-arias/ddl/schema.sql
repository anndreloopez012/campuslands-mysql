DROP DATABASE IF EXISTS dibujo_digital_db;
CREATE DATABASE dibujo_digital_db;
USE dibujo_digital_db;

CREATE TABLE obras_digitales (
    id_obra INT AUTO_INCREMENT PRIMARY KEY,
    titulo_obra VARCHAR(100) NOT NULL,
    software_utilizado VARCHAR(50) NOT NULL,
    horas_trabajo INT UNSIGNED CHECK (horas_trabajo > 0),
    precio_comision DECIMAL(8,2) CHECK (precio_comision >= 0),
    calificacion DECIMAL(3,1) CHECK (calificacion >= 0 AND calificacion <= 10),
    estado ENUM('publicado', 'en_proceso', 'archivado') DEFAULT 'publicado'
);
