DROP DATABASE IF EXISTS videojuego_rpg_db;
CREATE DATABASE videojuego_rpg_db;
USE videojuego_rpg_db;

CREATE TABLE personajes_rpg (
    id_personaje INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    clase VARCHAR(30) NOT NULL,
    nivel INT UNSIGNED CHECK (nivel >= 1 AND nivel <= 100),
    experiencia BIGINT UNSIGNED CHECK (experiencia >= 0),
    puntos_vida INT UNSIGNED CHECK (puntos_vida > 0),
    oro DECIMAL(10,2) CHECK (oro >= 0),
    estado ENUM('activo', 'derrotado', 'en_mision') DEFAULT 'activo'
);
