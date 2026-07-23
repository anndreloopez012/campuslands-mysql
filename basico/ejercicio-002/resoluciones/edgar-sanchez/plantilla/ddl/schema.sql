CREATE TABLE jugadores_ranking (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(50) NOT NULL UNIQUE,
    nivel INT NOT NULL DEFAULT 1 CHECK (nivel >= 1),
    puntos_ranking INT NOT NULL DEFAULT 1000 CHECK (puntos_ranking >= 0),
    partidas_jugadas INT NOT NULL DEFAULT 0 CHECK (partidas_jugadas >= 0),
    victorias INT NOT NULL DEFAULT 0 CHECK (victorias >= 0),
    bajas INT NOT NULL DEFAULT 0 CHECK (bajas >= 0),
    rango VARCHAR(20) NOT NULL DEFAULT 'Bronce' CHECK (rango IN ('Bronce', 'Plata', 'Oro', 'Platino', 'Diamante', 'Corona', 'As')),
    fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_victorias_partidas CHECK (victorias <= partidas_jugadas)
);