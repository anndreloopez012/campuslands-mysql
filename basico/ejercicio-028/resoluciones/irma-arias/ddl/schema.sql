-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_academia_tech;
CREATE DATABASE db_academia_tech;
USE db_academia_tech;

-- Tabla principal: Módulos y Cursos de Tecnología Académica
CREATE TABLE cursos_tech (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(80) NOT NULL,
    tecnologia VARCHAR(40) NOT NULL, -- Ej: MySQL, Python, Git, React
    horas_duracion INT NOT NULL,
    costo_inscripcion DECIMAL(8,2) NOT NULL,
    estado ENUM('activo', 'pausado', 'finalizado') DEFAULT 'activo',
    fecha_inicio DATE NOT NULL,
    
    -- Restricción de validación profesional
    CONSTRAINT chk_duracion_positiva CHECK (horas_duracion > 0),
    CONSTRAINT chk_costo_no_negativo CHECK (costo_inscripcion >= 0)
);