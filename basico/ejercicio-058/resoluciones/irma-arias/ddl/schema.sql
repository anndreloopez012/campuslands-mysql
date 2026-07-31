-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_academia_tech;
CREATE DATABASE db_academia_tech;
USE db_academia_tech;

-- Tabla principal: Módulos y Cursos de la Academia Tech
CREATE TABLE cursos_academia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_curso VARCHAR(30) NOT NULL UNIQUE,
    nombre_curso VARCHAR(60) NOT NULL,
    tecnologia VARCHAR(40) NOT NULL, -- Ej: Python, MySQL, Git, Frontend, n8n
    horas_duracion INT NOT NULL,
    cupos_disponibles INT NOT NULL,
    estado ENUM('activo', 'en_inscripcion', 'finalizado', 'suspendido') DEFAULT 'activo',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_horas_duracion CHECK (horas_duracion > 0),
    CONSTRAINT chk_cupos_disponibles CHECK (cupos_disponibles >= 0)
);