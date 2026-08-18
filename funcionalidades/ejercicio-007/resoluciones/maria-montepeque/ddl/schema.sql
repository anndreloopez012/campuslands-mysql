-- funcionalidades/ejercicio-007 - maria-montepeque
-- Tematica: biblioteca gamer
USE campuslands_mysql;

DROP TABLE IF EXISTS juegos_biblioteca;
DROP TABLE IF EXISTS jugadores_gamer;

CREATE TABLE jugadores_gamer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    alias VARCHAR(40) NOT NULL UNIQUE,
    plataforma_principal VARCHAR(30) NOT NULL,
    -- Autorreferencia: quien invito a este jugador (NULL si nadie lo invito).
    referido_por INT NULL,
    CONSTRAINT fk_jugador_referido
        FOREIGN KEY (referido_por) REFERENCES jugadores_gamer (id)
);

CREATE TABLE juegos_biblioteca (
    id INT AUTO_INCREMENT PRIMARY KEY,
    -- NULL = juego en lista de deseos, todavia sin asignar a ningun jugador.
    jugador_id INT NULL,
    titulo VARCHAR(120) NOT NULL,
    genero VARCHAR(40) NOT NULL,
    plataforma VARCHAR(30) NOT NULL,
    horas_jugadas DECIMAL(6, 1) NOT NULL DEFAULT 0,
    CONSTRAINT fk_juego_jugador
        FOREIGN KEY (jugador_id) REFERENCES jugadores_gamer (id)
);
