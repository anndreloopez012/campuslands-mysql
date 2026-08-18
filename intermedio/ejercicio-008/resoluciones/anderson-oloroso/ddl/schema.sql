USE campuslands_mysql;

CREATE TABLE IF NOT EXISTS equipos_futbol_sala (
    equipo_id INT NOT NULL AUTO_INCREMENT,
    nombre_equipo VARCHAR(100) NOT NULL,
    ciudad VARCHAR(80) NOT NULL,
    PRIMARY KEY (equipo_id)
);

CREATE TABLE IF NOT EXISTS posiciones_futbol_sala (
    posicion_id INT NOT NULL AUTO_INCREMENT,
    nombre_posicion VARCHAR(50) NOT NULL,
    PRIMARY KEY (posicion_id)
);

CREATE TABLE IF NOT EXISTS jugadores_futbol_sala (
    jugador_id INT NOT NULL AUTO_INCREMENT,
    nombre_jugador VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50) NOT NULL,
    posicion_id INT NOT NULL,
    equipo_id INT NOT NULL,
    PRIMARY KEY (jugador_id),
    FOREIGN KEY (posicion_id) REFERENCES posiciones_futbol_sala(posicion_id),
    FOREIGN KEY (equipo_id) REFERENCES equipos_futbol_sala(equipo_id)
);

CREATE TABLE IF NOT EXISTS temporadas_futbol_sala (
    temporada_id INT NOT NULL AUTO_INCREMENT,
    nombre_temporada VARCHAR(20) NOT NULL,
    anio_inicio INT NOT NULL,
    anio_fin INT NOT NULL,
    PRIMARY KEY (temporada_id)
);

CREATE TABLE IF NOT EXISTS participaciones_futbol_sala (
    participacion_id INT NOT NULL AUTO_INCREMENT,
    jugador_id INT NOT NULL,
    temporada_id INT NOT NULL,
    numero_camiseta INT NOT NULL,
    goles INT NOT NULL,
    asistencias INT NOT NULL,
    PRIMARY KEY (participacion_id),
    FOREIGN KEY (jugador_id) REFERENCES jugadores_futbol_sala(jugador_id),
    FOREIGN KEY (temporada_id) REFERENCES temporadas_futbol_sala(temporada_id)
);