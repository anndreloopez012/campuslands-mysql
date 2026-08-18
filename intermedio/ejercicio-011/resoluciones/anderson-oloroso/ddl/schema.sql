USE campuslands_mysql;

CREATE TABLE IF NOT EXISTS jugadores_pingpong (
    jugador_id INT NOT NULL AUTO_INCREMENT,
    nombre_jugador VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50) NOT NULL,
    edad INT NOT NULL CHECK (edad BETWEEN 10 AND 70),
    ranking INT NOT NULL CHECK (ranking > 0),
    partidos_ganados INT NOT NULL CHECK (partidos_ganados >= 0),
    partidos_perdidos INT NOT NULL CHECK (partidos_perdidos >= 0),
    PRIMARY KEY (jugador_id)
);