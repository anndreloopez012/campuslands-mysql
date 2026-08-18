-- Ejercicio 008 - Intermedio - Normalización 3FN Fútbol Sala

-- Tabla de equipos
CREATE TABLE `ejercicio-008-int-equipos` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL UNIQUE,
    ciudad VARCHAR(30) NOT NULL,
    entrenador VARCHAR(50) NOT NULL
);

-- Tabla de posiciones
CREATE TABLE `ejercicio-008-int-posiciones` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL UNIQUE,
    descripcion VARCHAR(100)
);

-- Tabla de jugadores (3FN - sin dependencias transitivas)
CREATE TABLE `ejercicio-008-int-jugadores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    equipo_id INT,
    posicion_id INT,
    goles INT DEFAULT 0,
    asistencias INT DEFAULT 0,
    partidos INT DEFAULT 0,
    estado VARCHAR(20) DEFAULT 'activo',
    FOREIGN KEY (equipo_id) REFERENCES `ejercicio-008-int-equipos`(id),
    FOREIGN KEY (posicion_id) REFERENCES `ejercicio-008-int-posiciones`(id)
);