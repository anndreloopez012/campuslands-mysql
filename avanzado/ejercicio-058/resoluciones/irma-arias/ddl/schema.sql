DROP DATABASE IF EXISTS academia_tech_db;
CREATE DATABASE academia_tech_db;
USE academia_tech_db;

CREATE TABLE cursos_academia (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    tecnologia VARCHAR(50) NOT NULL,
    duracion_semanas INT UNSIGNED CHECK (duracion_semanas > 0),
    costo_usd DECIMAL(8,2) CHECK (costo_usd >= 0),
    calificacion_promedio DECIMAL(3,1) CHECK (calificacion_promedio >= 0 AND calificacion_promedio <= 10),
    estado ENUM('activo', 'pausado', 'finalizado') DEFAULT 'activo'
);
