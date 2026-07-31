-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_carreras_urbanas;
CREATE DATABASE db_carreras_urbanas;
USE db_carreras_urbanas;

-- Tabla principal: Inscripciones y Participantes en Carreras Urbanas
CREATE TABLE participantes_carreras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_corredor VARCHAR(50) NOT NULL,
    categoria_distancia VARCHAR(30) NOT NULL, -- Ej: 5K, 10K, 21K Media Maratón
    costo_inscripcion DECIMAL(10,2) NOT NULL,
    kilometros_recorridos DECIMAL(5,2) NOT NULL,
    estado_pago ENUM('pagado', 'pendiente', 'reembolsado') DEFAULT 'pagado',
    fecha_inscripcion DATE NOT NULL,
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_costo_positivo CHECK (costo_inscripcion >= 0),
    CONSTRAINT chk_km_positivo CHECK (kilometros_recorridos > 0)
);