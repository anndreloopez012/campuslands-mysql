CREATE TABLE jugadores_futsal (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    posicion VARCHAR(30) NOT NULL CHECK (posicion IN ('Cierre', 'Ala', 'Pívot', 'Portero')),
    partidos_jugados INT NOT NULL DEFAULT 0 CHECK (partidos_jugados >= 0),
    goles_anotados INT NOT NULL DEFAULT 0 CHECK (goles_anotados >= 0),
    asistencias INT NOT NULL DEFAULT 0 CHECK (asistencias >= 0),
    tarjetas_amarillas INT NOT NULL DEFAULT 0 CHECK (tarjetas_amarillas >= 0),
    estado VARCHAR(20) NOT NULL DEFAULT 'Activo' CHECK (estado IN ('Activo', 'Suspendido', 'Lesionado', 'Transferido'))
);