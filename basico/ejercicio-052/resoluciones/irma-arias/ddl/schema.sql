-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_animacion_3d;
CREATE DATABASE db_animacion_3d;
USE db_animacion_3d;

-- Tabla principal: Proyectos y Escenas de Animación 3D
CREATE TABLE proyectos_animacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_escena VARCHAR(60) NOT NULL,
    software_3d VARCHAR(40) NOT NULL, -- Ej: Blender, Maya, Cinema 4D, 3ds Max
    fotogramas_totales INT NOT NULL,
    tiempo_render_horas DECIMAL(6,1) NOT NULL,
    complejidad_poligonal ENUM('baja', 'media', 'alta', 'extrema') DEFAULT 'media',
    estado ENUM('renderizado', 'en_proceso', 'cola_espera', 'cancelado') DEFAULT 'en_proceso',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_fotogramas CHECK (fotogramas_totales > 0),
    CONSTRAINT chk_tiempo_render CHECK (tiempo_render_horas > 0)
);