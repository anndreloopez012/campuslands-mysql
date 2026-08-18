CREATE TABLE jugadores_pingpong (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    documento_identidad VARCHAR(20) NOT NULL UNIQUE,
    nombre_completo VARCHAR(100) NOT NULL,
    mano_dominante VARCHAR(10) NOT NULL CHECK (mano_dominante IN ('Diestro', 'Zurdo')),
    categoria VARCHAR(20) NOT NULL CHECK (categoria IN ('Sub-15', 'Sub-18', 'Mayores', 'Senior')),
    puntos_ranking INT NOT NULL DEFAULT 1000 CHECK (puntos_ranking >= 0),
    partidos_ganados INT NOT NULL DEFAULT 0 CHECK (partidos_ganados >= 0),
    partidos_perdidos INT NOT NULL DEFAULT 0 CHECK (partidos_perdidos >= 0),
    estado_actividad VARCHAR(15) NOT NULL DEFAULT 'Activo' CHECK (estado_actividad IN ('Activo', 'Inactivo', 'Sancionado'))
);