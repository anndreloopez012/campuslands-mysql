-- Eliminar la base de datos si ya existe para asegurar una ejecución desde cero
DROP DATABASE IF EXISTS db_accion_aventura;
CREATE DATABASE db_accion_aventura;
USE db_accion_aventura;

-- Tabla principal: Registro de Misiones del Videojuego de Acción y Aventura
CREATE TABLE misiones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo_mision VARCHAR(80) NOT NULL,
    region VARCHAR(50) NOT NULL,
    dificultad VARCHAR(20) NOT NULL, -- Ej: Facil, Media, Dificil, Legendaria
    recompensa_oro DECIMAL(8,2) NOT NULL,
    estado ENUM('disponible', 'completada', 'bloqueada') DEFAULT 'disponible',
    fecha_limite DATE NOT NULL,
    
    -- Restricciones de validación
    CONSTRAINT chk_recompensa_positiva CHECK (recompensa_oro >= 0)
);