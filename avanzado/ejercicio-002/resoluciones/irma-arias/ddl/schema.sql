-- DDL: Creación de base de datos y procedimientos almacenados para Ranking Battle Royale
DROP DATABASE IF EXISTS db_battle_royale_avanzado;
CREATE DATABASE db_battle_royale_avanzado CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_battle_royale_avanzado;

CREATE TABLE ranking_pro (
    id_jugador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    gamertag VARCHAR(50) NOT NULL UNIQUE,
    rango_actual VARCHAR(30) NOT NULL DEFAULT 'Bronce',
    puntos_liga INT UNSIGNED NOT NULL DEFAULT 0,
    eliminaciones_totales INT UNSIGNED NOT NULL DEFAULT 0,
    partidas_jugadas INT UNSIGNED NOT NULL DEFAULT 0,
    estado ENUM('activo', 'suspendido', 'leyenda') NOT NULL DEFAULT 'activo',
    ultima_actualizacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT chk_puntos CHECK (puntos_liga >= 0)
) ENGINE=InnoDB;

-- Creación de Procedimiento Almacenado para registrar o actualizar puntos de un jugador
DELIMITER //
CREATE PROCEDURE sp_actualizar_puntos_jugador(
    IN p_gamertag VARCHAR(50),
    IN p_puntos_nuevos INT,
    IN p_eliminaciones INT
)
BEGIN
    UPDATE ranking_pro 
    SET puntos_liga = puntos_liga + p_puntos_nuevos,
        eliminaciones_totales = eliminaciones_totales + p_eliminaciones,
        partidas_jugadas = partidas_jugadas + 1
    WHERE gamertag = p_gamertag;
END //
DELIMITER ;