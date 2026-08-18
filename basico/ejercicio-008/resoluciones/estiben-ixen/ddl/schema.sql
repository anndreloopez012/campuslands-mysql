USE campuslands_mysql;

DROP TABLE IF EXISTS jugadores_futbol_sala;

CREATE TABLE jugadores_futbol_sala (

    id_jugador INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(80) NOT NULL,

    equipo VARCHAR(60) NOT NULL,

    posicion ENUM(
        'Portero',
        'Defensa',
        'Ala',
        'Pivot'
    ) NOT NULL,

    edad INT NOT NULL CHECK (edad >= 16),

    goles INT NOT NULL DEFAULT 0 CHECK (goles >= 0),

    asistencias INT NOT NULL DEFAULT 0 CHECK (asistencias >= 0),

    salario DECIMAL(10,2) NOT NULL CHECK (salario > 0),

    estado ENUM(
        'Activo',
        'Lesionado',
        'Suspendido'
    ) NOT NULL

);