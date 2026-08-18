-- Campuslands MySQL - intermedio ejercicio 060
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS streaming_team_db;
USE streaming_team_db;

-- Tabla de Streamers del equipo
CREATE TABLE streamers (
    id_streamer INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nickname VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    pais VARCHAR(50) NOT NULL,
    fecha_ingreso DATE NOT NULL
);

-- Tabla de Plataformas de transmisión
CREATE TABLE plataformas (
    id_plataforma INT AUTO_INCREMENT PRIMARY KEY,
    nombre_plataforma VARCHAR(50) NOT NULL,
    comision_porcentaje DECIMAL(5,2) DEFAULT 0.00
);

-- Tabla de Registro de Transmisiones
CREATE TABLE transmisiones (
    id_transmision INT AUTO_INCREMENT PRIMARY KEY,
    id_streamer INT NOT NULL,
    id_plataforma INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    categoria_juego VARCHAR(100) NOT NULL,
    fecha_inicio DATETIME NOT NULL,
    duracion_minutos INT NOT NULL,
    espectadores_promedio INT NOT NULL,
    espectadores_pico INT NOT NULL,
    ingresos_generados DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_streamer) REFERENCES streamers(id_streamer) ON DELETE CASCADE,
    FOREIGN KEY (id_plataforma) REFERENCES plataformas(id_plataforma) ON DELETE CASCADE
);

-- Tabla de Inventario de Hardware y Equipamiento
CREATE TABLE equipamiento (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    id_streamer INT NOT NULL,
    componente VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    costo DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_streamer) REFERENCES streamers(id_streamer) ON DELETE CASCADE
);