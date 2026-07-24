-- DDL: Creación de base de datos y tablas para Ranking Battle Royale (Enfoque LEFT JOIN)
DROP DATABASE IF EXISTS db_battle_royale_intermedio;
CREATE DATABASE db_battle_royale_intermedio CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_battle_royale_intermedio;

-- Tabla principal de Jugadores (Permite registrar participantes aunque no tengan partidas o escuadras aún)
CREATE TABLE jugadores_br (
    id_jugador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(45) NOT NULL UNIQUE,
    rango_actual VARCHAR(30) NOT NULL DEFAULT 'Bronce',
    nivel_cuenta INT UNSIGNED NOT NULL DEFAULT 1,
    estado_jugador ENUM('activo', 'suspendido', 'inactivo') NOT NULL DEFAULT 'activo',
    CONSTRAINT chk_nivel CHECK (nivel_cuenta > 0)
) ENGINE=InnoDB;

-- Tabla de Partidas/Torneos con registros de puntaje individual
CREATE TABLE estadisticas_partidas (
    id_estadistica INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_jugador INT UNSIGNED,
    eliminaciones INT UNSIGNED NOT NULL DEFAULT 0,
    daño_total DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    posicion_obtenida INT UNSIGNED NOT NULL,
    fecha_partida DATE NOT NULL,
    CONSTRAINT fk_jugador_stats FOREIGN KEY (id_jugador) 
        REFERENCES jugadores_br(id_jugador) 
        ON DELETE SET NULL 
        ON UPDATE CASCADE,
    CONSTRAINT chk_posicion CHECK (posicion_obtenida BETWEEN 1 AND 100)
) ENGINE=InnoDB;