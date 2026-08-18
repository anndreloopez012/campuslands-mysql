CREATE TABLE equipos_futbol (
    equipo_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(100) NOT NULL UNIQUE,
    ciudad VARCHAR(50) NOT NULL,
    estadio VARCHAR(100) NOT NULL,
    anio_fundacion INT NOT NULL CHECK (anio_fundacion BETWEEN 1800 AND 2026)
);

CREATE TABLE jugadores_futbol (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_id INT NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    posicion VARCHAR(30) NOT NULL CHECK (posicion IN ('Portero', 'Defensa', 'Centrocampista', 'Delantero')),
    salario_anual_usd DECIMAL(12,2) NOT NULL CHECK (salario_anual_usd > 0.00),
    CONSTRAINT fk_jugadores_equipos 
        FOREIGN KEY (equipo_id) REFERENCES equipos_futbol(equipo_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE partidos_liga (
    partido_id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_local_id INT NOT NULL,
    equipo_visitante_id INT NOT NULL,
    goles_local INT NOT NULL DEFAULT 0 CHECK (goles_local >= 0),
    goles_visitante INT NOT NULL DEFAULT 0 CHECK (goles_visitante >= 0),
    fecha_partido DATE NOT NULL,
    CONSTRAINT fk_partidos_local 
        FOREIGN KEY (equipo_local_id) REFERENCES equipos_futbol(equipo_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_partidos_visitante 
        FOREIGN KEY (equipo_visitante_id) REFERENCES equipos_futbol(equipo_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_equipos_distintos 
        CHECK (equipo_local_id <> equipo_visitante_id)
);

CREATE TABLE rendimiento_jugadores_partido (
    rendimiento_id INT AUTO_INCREMENT PRIMARY KEY,
    partido_id INT NOT NULL,
    jugador_id INT NOT NULL,
    minutos_jugados INT NOT NULL CHECK (minutos_jugados BETWEEN 1 AND 120),
    goles_anotados INT NOT NULL DEFAULT 0 CHECK (goles_anotados >= 0),
    asistencias INT NOT NULL DEFAULT 0 CHECK (asistencias >= 0),
    tarjetas_amarillas INT NOT NULL DEFAULT 0 CHECK (tarjetas_amarillas BETWEEN 0 AND 2),
    tarjetas_rojas INT NOT NULL DEFAULT 0 CHECK (tarjetas_rojas BETWEEN 0 AND 1),
    CONSTRAINT fk_rendimiento_partidos 
        FOREIGN KEY (partido_id) REFERENCES partidos_liga(partido_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_rendimiento_jugadores 
        FOREIGN KEY (jugador_id) REFERENCES jugadores_futbol(jugador_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_jugador_partido 
        UNIQUE (partido_id, jugador_id)
);

