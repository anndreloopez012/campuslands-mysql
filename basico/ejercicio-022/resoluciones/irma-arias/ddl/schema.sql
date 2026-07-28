DROP DATABASE IF EXISTS db_animacion_3d_irma;
CREATE DATABASE db_animacion_3d_irma;
USE db_animacion_3d_irma;

CREATE TABLE proyectos_animacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo_shot VARCHAR(80) NOT NULL,
    software_3d VARCHAR(30) NOT NULL CHECK (software_3d IN ('Blender', 'Maya', 'Cinema 4D', 'Houdini', 'ZBrush')),
    tiempo_render_horas DECIMAL(6,2) NOT NULL CHECK (tiempo_render_horas > 0.00),
    poligonos_millones DECIMAL(6,2) NOT NULL CHECK (poligonos_millones > 0.00),
    estado_shot VARCHAR(20) NOT NULL DEFAULT 'Completado' CHECK (estado_shot IN ('Completado', 'En Render', 'Revision'))
);