CREATE TABLE equipos_futsal (
    equipo_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(100) NOT NULL UNIQUE,
    ciudad VARCHAR(50) NOT NULL,
    pabellon_local VARCHAR(100) NOT NULL,
    anio_fundacion INT NOT NULL CHECK (anio_fundacion BETWEEN 1800 AND 2026)
);

CREATE TABLE jugadores_futsal (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_id INT NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    dorsal INT NOT NULL CHECK (dorsal BETWEEN 1 AND 99),
    posicion VARCHAR(30) NOT NULL CHECK (posicion IN ('Portero', 'Cierre', 'Ala', 'Pívot')),
    salario_mensual_usd DECIMAL(10,2) NOT NULL CHECK (salario_mensual_usd > 0.00),
    CONSTRAINT fk_jugadores_equipos_futsal 
        FOREIGN KEY (equipo_id) REFERENCES equipos_futsal(equipo_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_equipo_dorsal 
        UNIQUE (equipo_id, dorsal)
);

CREATE TABLE encuentros_futsal (
    encuentro_id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_local_id INT NOT NULL,
    equipo_visitante_id INT NOT NULL,
    goles_local INT NOT NULL DEFAULT 0 CHECK (goles_local >= 0),
    goles_visitante INT NOT NULL DEFAULT 0 CHECK (goles_visitante >= 0),
    fecha_encuentro DATE NOT NULL,
    CONSTRAINT fk_encuentros_local 
        FOREIGN KEY (equipo_local_id) REFERENCES equipos_futsal(equipo_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_encuentros_visitante 
        FOREIGN KEY (equipo_visitante_id) REFERENCES equipos_futsal(equipo_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_futsal_equipos_distintos 
        CHECK (equipo_local_id <> equipo_visitante_id)
);

CREATE TABLE estadisticas_partido_futsal (
    estadistica_id INT AUTO_INCREMENT PRIMARY KEY,
    encuentro_id INT NOT NULL,
    jugador_id INT NOT NULL,
    goles_anotados INT NOT NULL DEFAULT 0 CHECK (goles_anotados >= 0),
    asistencias INT NOT NULL DEFAULT 0 CHECK (asistencias >= 0),
    faltas_cometidas INT NOT NULL DEFAULT 0 CHECK (faltas_cometidas >= 0),
    tarjetas_amarillas INT NOT NULL DEFAULT 0 CHECK (tarjetas_amarillas BETWEEN 0 AND 2),
    tarjetas_rojas INT NOT NULL DEFAULT 0 CHECK (tarjetas_rojas BETWEEN 0 AND 1),
    CONSTRAINT fk_estadisticas_encuentros 
        FOREIGN KEY (encuentro_id) REFERENCES encuentros_futsal(encuentro_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_estadisticas_jugadores 
        FOREIGN KEY (jugador_id) REFERENCES jugadores_futsal(jugador_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_futsal_jugador_encuentro 
        UNIQUE (encuentro_id, jugador_id)
);
