-- DDL: Creación de la base de datos y esquema para Ranking Battle Royale
DROP DATABASE IF EXISTS db_battle_royale;
CREATE DATABASE db_battle_royale CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_battle_royale;

CREATE TABLE jugadores_ranking (
    id_jugador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    gamertag VARCHAR(50) NOT NULL UNIQUE,
    nivel INT UNSIGNED NOT NULL DEFAULT 1,
    puntaje_total DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    partidas_jugadas INT UNSIGNED NOT NULL DEFAULT 0,
    victorias INT UNSIGNED NOT NULL DEFAULT 0,
    kda DECIMAL(4, 2) UNSIGNED NOT NULL DEFAULT 0.00,
    estado ENUM('activo', 'suspendido', 'inactivo') NOT NULL DEFAULT 'activo',
    fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_victorias_partidas CHECK (victorias <= partidas_jugadas)
) ENGINE=InnoDB;