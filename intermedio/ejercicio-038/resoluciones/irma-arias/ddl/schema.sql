DROP DATABASE IF EXISTS futbol_sala_3fn_db;
CREATE DATABASE futbol_sala_3fn_db;
USE futbol_sala_3fn_db;

CREATE TABLE sedes_ciudades (
    id_sede INT AUTO_INCREMENT PRIMARY KEY,
    nombre_ciudad VARCHAR(50) NOT NULL,
    nombre_coliseo VARCHAR(60) NOT NULL
);

CREATE TABLE posiciones_juego (
    id_posicion INT AUTO_INCREMENT PRIMARY KEY,
    nombre_posicion VARCHAR(30) NOT NULL,
    descripcion_tactica VARCHAR(80) NOT NULL
);

CREATE TABLE equipos_sala (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(60) NOT NULL,
    id_sede INT NOT NULL,
    FOREIGN KEY (id_sede) REFERENCES sedes_ciudades(id_sede) ON DELETE CASCADE
);

CREATE TABLE jugadores_sala (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(60) NOT NULL,
    dorsal INT UNSIGNED CHECK (dorsal BETWEEN 1 AND 99),
    goles_anotados INT UNSIGNED DEFAULT 0,
    id_equipo INT NOT NULL,
    id_posicion INT NOT NULL,
    estado_jugador ENUM('activo', 'lesionado', 'suspendido', 'retirado') DEFAULT 'activo',
    FOREIGN KEY (id_equipo) REFERENCES equipos_sala(id_equipo) ON DELETE CASCADE,
    FOREIGN KEY (id_posicion) REFERENCES posiciones_juego(id_posicion) ON DELETE CASCADE
);
