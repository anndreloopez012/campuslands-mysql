CREATE TABLE estadios (
    estadio_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_estadio VARCHAR(100) NOT NULL UNIQUE,
    ciudad VARCHAR(50) NOT NULL,
    capacidad INT NOT NULL CHECK (capacidad >= 1000)
);

CREATE TABLE equipos (
    equipo_id INT AUTO_INCREMENT PRIMARY KEY,
    estadio_id INT NOT NULL,
    nombre_equipo VARCHAR(50) NOT NULL UNIQUE,
    fundacion_anio INT NOT NULL CHECK (fundacion_anio BETWEEN 1800 AND 2026),
    CONSTRAINT fk_equipos_estadios 
        FOREIGN KEY (estadio_id) REFERENCES estadios(estadio_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE partidos (
    partido_id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_local_id INT NOT NULL,
    equipo_visitante_id INT NOT NULL,
    goles_local INT NOT NULL DEFAULT 0 CHECK (goles_local >= 0),
    goles_visitante INT NOT NULL DEFAULT 0 CHECK (goles_visitante >= 0),
    fecha_partido DATE NOT NULL,
    jornada INT NOT NULL CHECK (jornada BETWEEN 1 AND 50),
    CONSTRAINT fk_partidos_local 
        FOREIGN KEY (equipo_local_id) REFERENCES equipos(equipo_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_partidos_visitante 
        FOREIGN KEY (equipo_visitante_id) REFERENCES equipos(equipo_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_equipos_diferentes 
        CHECK (equipo_local_id <> equipo_visitante_id)
);
