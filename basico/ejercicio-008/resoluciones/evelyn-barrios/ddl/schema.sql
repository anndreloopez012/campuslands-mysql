-- basico/ejercicio-008 - evelyn-barrios
-- Temática: Fútbol Sala

USE campuslands_mysql;

-- Creación de la tabla de jugadores de futsal
CREATE TABLE jugadores_futsal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(100) NOT NULL,
    equipo VARCHAR(100),
    posicion ENUM('Portero', 'Cierre', 'Ala', 'Pívot') NOT NULL,
    goles_anotados INT DEFAULT 0,
    asistencias INT DEFAULT 0,
    tarjetas_amarillas INT DEFAULT 0,
    tarjetas_rojas INT DEFAULT 0,
    estado ENUM('Activo', 'Lesionado', 'Sancionado', 'Retirado') DEFAULT 'Activo',
    CONSTRAINT chk_stats_no_negativas CHECK (goles_anotados >= 0 AND asistencias >= 0 AND tarjetas_amarillas >= 0 AND tarjetas_rojas >= 0)
);