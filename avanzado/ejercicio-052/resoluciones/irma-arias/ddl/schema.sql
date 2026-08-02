DROP DATABASE IF EXISTS animacion_3d_db;
CREATE DATABASE animacion_3d_db;
USE animacion_3d_db;

CREATE TABLE proyectos_animacion (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_proyecto VARCHAR(100) NOT NULL,
    software_3d VARCHAR(50) NOT NULL,
    tiempo_render_horas INT UNSIGNED CHECK (tiempo_render_horas > 0),
    presupuesto_usd DECIMAL(8,2) CHECK (presupuesto_usd >= 0),
    calificacion_tecnica DECIMAL(3,1) CHECK (calificacion_tecnica >= 0 AND calificacion_tecnica <= 10),
    estado ENUM('completado', 'en_render', 'pausado') DEFAULT 'completado'
);
