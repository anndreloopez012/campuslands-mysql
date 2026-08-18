USE campuslands_mysql;

CREATE TABLE IF NOT EXISTS equipos_futbol (
    equipo_id INT NOT NULL AUTO_INCREMENT,
    nombre_equipo VARCHAR(100) NOT NULL,
    ciudad VARCHAR(80) NOT NULL,
    estadio VARCHAR(100) NOT NULL,
    PRIMARY KEY (equipo_id)
);

CREATE TABLE IF NOT EXISTS jugadores_futbol (
    jugador_id INT NOT NULL AUTO_INCREMENT,
    nombre_jugador VARCHAR(100) NOT NULL,
    posicion VARCHAR(50) NOT NULL,
    nacionalidad VARCHAR(50) NOT NULL,
    PRIMARY KEY (jugador_id)
);

CREATE TABLE IF NOT EXISTS jugadores_equipos (
    jugador_id INT NOT NULL,
    equipo_id INT NOT NULL,
    numero_camiseta INT NOT NULL,
    temporada VARCHAR(20) NOT NULL,
    PRIMARY KEY (jugador_id, equipo_id),
    FOREIGN KEY (jugador_id) REFERENCES jugadores_futbol(jugador_id),
    FOREIGN KEY (equipo_id) REFERENCES equipos_futbol(equipo_id)
);