-- ddl/schema.sql
-- Creación de la estructura para la academia tech.

CREATE DATABASE IF NOT EXISTS academia_tech;
USE academia_tech;

-- Tabla para almacenar los datos de los estudiantes
CREATE TABLE IF NOT EXISTS estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    carrera VARCHAR(50) NOT NULL,
    estado_inscripcion ENUM('Activo', 'Pausado', 'Graduado', 'Retirado') NOT NULL DEFAULT 'Activo',
    promedio_calificaciones DECIMAL(4, 2) NOT NULL,
    fecha_registro DATE NOT NULL,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Fin del script