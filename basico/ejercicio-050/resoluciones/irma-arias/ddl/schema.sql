-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_estudio_tatuajes;
CREATE DATABASE db_estudio_tatuajes;
USE db_estudio_tatuajes;

-- Tabla principal: Citas o Trabajos de Tatuaje en el Estudio
CREATE TABLE tatuajes_estudio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(60) NOT NULL,
    estilo_tatuaje VARCHAR(40) NOT NULL, -- Ej: Realismo, Tradicional, Neo-Tradicional, Minimalista, Japones
    tamanio_cm2 INT NOT NULL, -- Tamaño aproximado en centímetros cuadrados
    costo_usd DECIMAL(8,2) NOT NULL,
    tiempo_estimado_horas DECIMAL(4,1) NOT NULL,
    estado ENUM('completado', 'agendado', 'en_proceso', 'cancelado') DEFAULT 'agendado',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_tamanio CHECK (tamanio_cm2 > 0),
    CONSTRAINT chk_costo_tatuaje CHECK (costo_usd > 0),
    CONSTRAINT chk_tiempo_horas CHECK (tiempo_estimado_horas > 0)
);