-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_videojuego_accion;
CREATE DATABASE db_videojuego_accion;
USE db_videojuego_accion;

-- Tabla principal: Misiones y Artefactos de Acción y Aventura
CREATE TABLE misiones_aventura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_mision VARCHAR(60) NOT NULL UNIQUE,
    region_mapa VARCHAR(40) NOT NULL, -- Ej: Templo Perdido, Selva Sombría, Cavernas de Cristal, Ciudadela
    dificultad INT NOT NULL,
    recompensa_oro DECIMAL(10,2) NOT NULL,
    tipo_mision VARCHAR(30) NOT NULL, -- Ej: Principal, Secundaria, Expedición, Saqueo
    estado ENUM('disponible', 'en_curso', 'completada', 'bloqueada') DEFAULT 'disponible',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_dificultad CHECK (dificultad >= 1 AND dificultad <= 10),
    CONSTRAINT chk_recompensa CHECK (recompensa_oro > 0)
);