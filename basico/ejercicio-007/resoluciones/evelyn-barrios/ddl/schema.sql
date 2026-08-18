-- Campuslands MySQL - basico ejercicio 007
-- Solución para evelyn-barrios
-- Temática: Liga de Fútbol

USE campuslands_mysql;

-- Creación de la tabla de posiciones de la liga
CREATE TABLE tabla_posiciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(100) NOT NULL UNIQUE,
    puntos INT DEFAULT 0,
    partidos_jugados INT DEFAULT 0,
    victorias INT DEFAULT 0,
    empates INT DEFAULT 0,
    derrotas INT DEFAULT 0,
    goles_favor INT DEFAULT 0,
    goles_contra INT DEFAULT 0,
    -- Restricción para asegurar que los puntos no sean negativos
    CONSTRAINT chk_puntos_no_negativos CHECK (puntos >= 0)
);
