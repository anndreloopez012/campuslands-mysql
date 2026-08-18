-- ddl/schema.sql
-- Creación de la base de datos y tabla para el videojuego RPG.

CREATE DATABASE IF NOT EXISTS rpg_game;
USE rpg_game;

-- Tabla para almacenar los personajes del juego
CREATE TABLE IF NOT EXISTS personajes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    clase ENUM('Guerrero', 'Mago', 'Arquero', 'Pícaro') NOT NULL,
    nivel INT NOT NULL DEFAULT 1,
    puntos_vida INT NOT NULL,
    puntos_ataque INT NOT NULL,
    region_origen VARCHAR(50),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Fin del script