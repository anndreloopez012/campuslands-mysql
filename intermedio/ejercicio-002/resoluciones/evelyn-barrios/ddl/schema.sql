-- Campuslands MySQL - intermedio ejercicio 002
-- Creación de la estructura para el ranking del battle royale.

CREATE DATABASE IF NOT EXISTS br_ranking_intermediate;
USE br_ranking_intermediate;

-- Tabla para almacenar los jugadores
CREATE TABLE IF NOT EXISTS jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(50) NOT NULL UNIQUE,
    fecha_registro DATE NOT NULL,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para almacenar las estadísticas de cada partida jugada
CREATE TABLE IF NOT EXISTS partidas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jugador_id INT NOT NULL,
    puntos_obtenidos INT NOT NULL,
    muertes INT DEFAULT 0,
    asistencias INT DEFAULT 0,
    fecha_partida DATETIME NOT NULL,
    
    -- Restricción de clave foránea para la relación con jugadores
    FOREIGN KEY (jugador_id) REFERENCES jugadores(id)
);
-- Fin del script
