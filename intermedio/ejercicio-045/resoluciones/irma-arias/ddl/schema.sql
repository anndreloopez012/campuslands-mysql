DROP DATABASE IF EXISTS biblioteca_gamer_db;
CREATE DATABASE biblioteca_gamer_db;
USE biblioteca_gamer_db;

CREATE TABLE plataformas (
    id_plataforma INT AUTO_INCREMENT PRIMARY KEY,
    nombre_plataforma VARCHAR(50) NOT NULL,
    fabricante VARCHAR(50) NOT NULL
);

CREATE TABLE desarrolladores (
    id_desarrollador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_desarrollador VARCHAR(60) NOT NULL,
    pais_origen VARCHAR(40) NOT NULL
);

CREATE TABLE videojuegos (
    id_videojuego INT AUTO_INCREMENT PRIMARY KEY,
    titulo_juego VARCHAR(80) NOT NULL,
    anio_lanzamiento INT UNSIGNED CHECK (anio_lanzamiento BETWEEN 1980 AND 2030),
    precio_usd DECIMAL(6,2) UNSIGNED CHECK (precio_usd BETWEEN 0.00 AND 200.00),
    horas_jugadas INT UNSIGNED DEFAULT 0,
    calificacion_metacritic INT UNSIGNED CHECK (calificacion_metacritic BETWEEN 1 AND 100),
    id_plataforma INT NOT NULL,
    id_desarrollador INT NOT NULL,
    estado_biblioteca ENUM('completado', 'jugando', 'pendiente', 'archivado') DEFAULT 'pendiente',
    FOREIGN KEY (id_plataforma) REFERENCES plataformas(id_plataforma) ON DELETE CASCADE,
    FOREIGN KEY (id_desarrollador) REFERENCES desarrolladores(id_desarrollador) ON DELETE CASCADE
);
