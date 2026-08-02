DROP DATABASE IF EXISTS ranking_battle_royale_db;
CREATE DATABASE ranking_battle_royale_db;
USE ranking_battle_royale_db;

CREATE TABLE clanes (
    id_clan INT AUTO_INCREMENT PRIMARY KEY,
    nombre_clan VARCHAR(60) NOT NULL,
    tag_clan VARCHAR(10) NOT NULL UNIQUE,
    nivel_clan INT UNSIGNED CHECK (nivel_clan BETWEEN 1 AND 10)
);

CREATE TABLE jugadores_br (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    gamertag VARCHAR(50) NOT NULL,
    puntos_ranking INT UNSIGNED DEFAULT 0,
    partidas_jugadas INT UNSIGNED DEFAULT 0,
    eliminaciones_totales INT UNSIGNED DEFAULT 0,
    id_clan INT NULL,
    estado_jugador ENUM('activo', 'suspendido', 'leyenda') DEFAULT 'activo',
    FOREIGN KEY (id_clan) REFERENCES clanes(id_clan) ON DELETE SET NULL
);
