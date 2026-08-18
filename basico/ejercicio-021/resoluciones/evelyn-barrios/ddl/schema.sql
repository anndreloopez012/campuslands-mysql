-- Campuslands MySQL - basico ejercicio 021
-- Ejecutar este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

-- Eliminar tabla si existe para asegurar un estado limpio
DROP TABLE IF EXISTS ilustraciones;

-- Tabla para almacenar la información de las ilustraciones digitales
CREATE TABLE ilustraciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL,
  artista VARCHAR(255) NOT NULL,
  software_usado VARCHAR(100),
  fecha_creacion DATE NOT NULL,
  calificacion_promedio DECIMAL(3,1) NOT NULL CHECK (calificacion_promedio >= 1.0 AND calificacion_promedio <= 10.0), -- Restricción: calificación entre 1.0 y 10.0
  estado ENUM('publicado', 'borrador', 'archivado') NOT NULL DEFAULT 'borrador',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);