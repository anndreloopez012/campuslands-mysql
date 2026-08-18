-- ddl/schema.sql
-- Creación de la estructura para el ranking de un battle royale.

CREATE DATABASE IF NOT EXISTS battle_royale_ranking;
USE battle_royale_ranking;

-- Tabla para almacenar el ranking y estadísticas de los jugadores
CREATE TABLE IF NOT EXISTS ranking_jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(50) NOT NULL UNIQUE,
    puntos_ranking INT NOT NULL DEFAULT 0,
    partidas_jugadas INT NOT NULL DEFAULT 0,
    victorias INT NOT NULL DEFAULT 0,
    kda_ratio DECIMAL(4, 2) NOT NULL,
    rango ENUM('Bronce', 'Plata', 'Oro', 'Platino', 'Diamante', 'Maestro') NOT NULL,
    ultima_partida DATETIME,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Fin del script