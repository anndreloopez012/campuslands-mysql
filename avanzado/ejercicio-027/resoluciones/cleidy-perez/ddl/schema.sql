-- Campuslands MySQL - avanzado ejercicio 027
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS juego_accion_aventura;
USE juego_accion_aventura;

-- 1. Tabla Regiones / Mapas
CREATE TABLE IF NOT EXISTS regiones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    dificultad_region VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. Tabla Jugadores
CREATE TABLE IF NOT EXISTS jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    gamertag VARCHAR(50) NOT NULL UNIQUE,
    nivel_cuenta INT DEFAULT 1,
    fecha_registro DATE DEFAULT (CURRENT_DATE)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Tabla Misiones / Misiones Secundarias
CREATE TABLE IF NOT EXISTS misiones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_mision VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    id_region INT NOT NULL,
    puntos_experiencia INT NOT NULL,
    CONSTRAINT fk_misiones_regiones FOREIGN KEY (id_region) REFERENCES regiones(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Tabla Partidas / Puntuaciones Registradas
CREATE TABLE IF NOT EXISTS partidas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_jugador INT NOT NULL,
    id_mision INT NOT NULL,
    puntuacion_obtenida INT NOT NULL,
    tiempo_segundos INT NOT NULL,
    fecha_partida DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_partidas_jugadores FOREIGN KEY (id_jugador) REFERENCES jugadores(id) ON DELETE CASCADE,
    CONSTRAINT fk_partidas_misiones FOREIGN KEY (id_mision) REFERENCES misiones(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 5. Tabla Ejercicios Prácticos
CREATE TABLE IF NOT EXISTS ejercicios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    titulo VARCHAR(150) NOT NULL,
    dificultad VARCHAR(50) NOT NULL,
    tematica VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
