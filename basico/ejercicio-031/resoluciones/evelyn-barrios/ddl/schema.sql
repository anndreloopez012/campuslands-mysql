-- ddl/schema.sql
-- Creación de la estructura para el torneo de esports MOBA.

CREATE DATABASE IF NOT EXISTS moba_tournament;
USE moba_tournament;

-- Tabla para almacenar los equipos participantes
CREATE TABLE IF NOT EXISTS equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(50) NOT NULL UNIQUE,
    region VARCHAR(50) NOT NULL,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para registrar las partidas del torneo
CREATE TABLE IF NOT EXISTS partidas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_rojo_id INT NOT NULL,
    equipo_azul_id INT NOT NULL,
    ganador_id INT, -- Puede ser NULL si la partida no se ha jugado
    fecha_partida DATETIME NOT NULL,
    duracion_minutos INT,
    fase_torneo ENUM('Grupos', 'Cuartos', 'Semifinal', 'Final') NOT NULL,
    
    FOREIGN KEY (equipo_rojo_id) REFERENCES equipos(id),
    FOREIGN KEY (equipo_azul_id) REFERENCES equipos(id),
    FOREIGN KEY (ganador_id) REFERENCES equipos(id)
);
-- Fin del script