-- Campuslands MySQL - basico ejercicio 008
DROP TABLE IF EXISTS equipos_futbol_sala;

CREATE TABLE equipos_futbol_sala(
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo VARCHAR(60) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    entrenador VARCHAR(60) NOT NULL,
    puntos INT NOT NULL,
    goles INT NOT NULL,
    estado ENUM('Activo','Suspendido') NOT NULL
);
