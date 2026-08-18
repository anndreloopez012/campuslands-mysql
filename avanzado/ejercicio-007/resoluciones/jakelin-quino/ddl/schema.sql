-- Ejercicio 007 - Avanzado - Vistas Avanzadas Liga de Fútbol

-- Tabla de equipos
CREATE TABLE `ejercicio-007-adv-equipos` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    ciudad VARCHAR(30) NOT NULL,
    estadio VARCHAR(50) NOT NULL,
    fundacion INT
);

-- Tabla de temporadas
CREATE TABLE `ejercicio-007-adv-temporadas` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    año INT NOT NULL UNIQUE,
    campeon VARCHAR(50)
);

-- Tabla de estadísticas
CREATE TABLE `ejercicio-007-adv-estadisticas` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    equipo_id INT,
    temporada_id INT,
    partidos INT DEFAULT 0,
    ganados INT DEFAULT 0,
    empatados INT DEFAULT 0,
    perdidos INT DEFAULT 0,
    goles_favor INT DEFAULT 0,
    goles_contra INT DEFAULT 0,
    puntos INT DEFAULT 0,
    FOREIGN KEY (equipo_id) REFERENCES `ejercicio-007-adv-equipos`(id),
    FOREIGN KEY (temporada_id) REFERENCES `ejercicio-007-adv-temporadas`(id)
);