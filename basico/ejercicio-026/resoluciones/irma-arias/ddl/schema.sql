-- Eliminar la base de datos si ya existe para empezar desde cero
DROP DATABASE IF EXISTS db_rpg_campus;
CREATE DATABASE db_rpg_campus;
USE db_rpg_campus;

-- Tabla principal de Personajes RPG
CREATE TABLE personajes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    clase VARCHAR(30) NOT NULL, -- Ej: Guerrero, Mago, Arquero
    nivel INT NOT NULL DEFAULT 1,
    experiencia INT NOT NULL DEFAULT 0,
    puntos_vida DECIMAL(6,2) NOT NULL,
    estado ENUM('activo', 'inactivo', 'retirado') DEFAULT 'activo',
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- Validación simple: Asegurar que los puntos de vida y el nivel sean válidos
    CONSTRAINT chk_vida_positiva CHECK (puntos_vida >= 0),
    CONSTRAINT chk_nivel_minimo CHECK (nivel >= 1)
);