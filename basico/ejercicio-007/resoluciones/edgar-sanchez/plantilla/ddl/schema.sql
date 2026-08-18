CREATE TABLE equipos_liga (
    equipo_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(50) NOT NULL UNIQUE,
    ciudad VARCHAR(50) NOT NULL,
    partidos_jugados INT NOT NULL DEFAULT 0 CHECK (partidos_jugados >= 0),
    victorias INT NOT NULL DEFAULT 0 CHECK (victorias >= 0),
    empates INT NOT NULL DEFAULT 0 CHECK (empates >= 0),
    derrotas INT NOT NULL DEFAULT 0 CHECK (derrotas >= 0),
    goles_a_favor INT NOT NULL DEFAULT 0 CHECK (goles_a_favor >= 0),
    goles_en_contra INT NOT NULL DEFAULT 0 CHECK (goles_en_contra >= 0),
    puntos INT NOT NULL DEFAULT 0 CHECK (puntos >= 0)
);