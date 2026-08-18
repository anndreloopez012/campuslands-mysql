-- funcionalidades/ejercicio-003 - maria-montepeque
-- Tematica: pingpong
USE campuslands_mysql;

DROP TABLE IF EXISTS partidas_pingpong;
DROP TABLE IF EXISTS jugadores_pingpong;

CREATE TABLE jugadores_pingpong (
    id INT AUTO_INCREMENT PRIMARY KEY,
    alias VARCHAR(40) NOT NULL UNIQUE,
    nombre_completo VARCHAR(100) NOT NULL,
    club VARCHAR(60) NOT NULL DEFAULT 'Sin club',
    ranking_puntos INT NOT NULL DEFAULT 1000,
    CONSTRAINT chk_ranking_puntos CHECK (ranking_puntos >= 0)
);

CREATE TABLE partidas_pingpong (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jugador_local_id INT NOT NULL,
    jugador_visitante_id INT NOT NULL,
    sets_local TINYINT NOT NULL DEFAULT 0,
    sets_visitante TINYINT NOT NULL DEFAULT 0,
    sede VARCHAR(80) NOT NULL,
    fecha_partida DATE NOT NULL,
    estado ENUM(
        'programada',
        'jugada',
        'cancelada'
    ) NOT NULL DEFAULT 'programada',
    CONSTRAINT fk_partida_jugador_local
        FOREIGN KEY (jugador_local_id) REFERENCES jugadores_pingpong (id),
    CONSTRAINT fk_partida_jugador_visitante
        FOREIGN KEY (jugador_visitante_id) REFERENCES jugadores_pingpong (id),
    CONSTRAINT chk_sets_local_validos CHECK (sets_local BETWEEN 0 AND 3),
    CONSTRAINT chk_sets_visitante_validos CHECK (sets_visitante BETWEEN 0 AND 3),
    CONSTRAINT chk_jugadores_distintos CHECK (jugador_local_id <> jugador_visitante_id)
);
