-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_videojuego_rpg;
CREATE DATABASE db_videojuego_rpg;
USE db_videojuego_rpg;

-- Tabla principal: Personajes y Héroes del RPG
CREATE TABLE personajes_rpg (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_personaje VARCHAR(50) NOT NULL UNIQUE,
    clase_rpg VARCHAR(30) NOT NULL, -- Ej: Guerrero, Mago, Arquero, Clerigo, Asesino
    nivel INT NOT NULL,
    puntos_vida INT NOT NULL,
    experiencia_acumulada INT NOT NULL,
    estado ENUM('activo', 'en_combate', 'inconciente', 'retirado') DEFAULT 'activo',
    
    -- Restricciones y validaciones simples profesionales
    CONSTRAINT chk_nivel CHECK (nivel >= 1 AND nivel <= 100),
    CONSTRAINT chk_puntos_vida CHECK (puntos_vida >= 0),
    CONSTRAINT chk_experiencia CHECK (experiencia_acumulada >= 0)
);