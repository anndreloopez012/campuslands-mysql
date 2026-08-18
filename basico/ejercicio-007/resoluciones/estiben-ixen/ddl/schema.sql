USE campuslands_mysql;

DROP TABLE IF EXISTS equipos;

CREATE TABLE equipos (

    id_equipo INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(60) NOT NULL,

    ciudad VARCHAR(50) NOT NULL,

    entrenador VARCHAR(80) NOT NULL,

    partidos_jugados INT NOT NULL CHECK (partidos_jugados >= 0),

    puntos INT NOT NULL CHECK (puntos >= 0),

    goles_favor INT NOT NULL CHECK (goles_favor >= 0),

    goles_contra INT NOT NULL CHECK (goles_contra >= 0),

    estado ENUM('Activo','Suspendido') NOT NULL

);