USE campuslands_mysql;

CREATE TABLE IF NOT EXISTS equipos_futsal (
    equipo_id INT NOT NULL AUTO_INCREMENT,
    nombre_equipo VARCHAR(100) NOT NULL,
    ciudad VARCHAR(80) NOT NULL,
    estadio VARCHAR(100) NOT NULL,
    PRIMARY KEY (equipo_id)
);

CREATE TABLE IF NOT EXISTS jugadores_futsal (
    jugador_id INT NOT NULL AUTO_INCREMENT,
    nombre_jugador VARCHAR(100) NOT NULL,
    posicion VARCHAR(50) NOT NULL,
    nacionalidad VARCHAR(50) NOT NULL,
    equipo_id INT NOT NULL,
    goles INT NOT NULL,
    PRIMARY KEY (jugador_id),
    FOREIGN KEY (equipo_id) REFERENCES equipos_futsal(equipo_id)
);
