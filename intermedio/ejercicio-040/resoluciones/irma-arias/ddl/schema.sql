DROP DATABASE IF EXISTS carreras_urbanas_db;
CREATE DATABASE carreras_urbanas_db;
USE carreras_urbanas_db;

CREATE TABLE categorias_carrera (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    distancia_km DECIMAL(4,2) UNSIGNED NOT NULL,
    CONSTRAINT uk_nombre_categoria UNIQUE (nombre_categoria)
);

CREATE TABLE corredores (
    id_corredor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(60) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    CONSTRAINT uk_correo_electronico UNIQUE (correo_electronico)
);

CREATE TABLE inscripciones_carrera (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_corredor INT NOT NULL,
    id_categoria INT NOT NULL,
    numero_dorsal INT UNSIGNED NOT NULL,
    tiempo_meta_minutos DECIMAL(5,2) UNSIGNED DEFAULT NULL,
    estado_participacion ENUM('inscrito', 'completado', 'retirado', 'descalificado') DEFAULT 'inscrito',
    CONSTRAINT uk_numero_dorsal UNIQUE (numero_dorsal),
    FOREIGN KEY (id_corredor) REFERENCES corredores(id_corredor) ON DELETE CASCADE,
    FOREIGN KEY (id_categoria) REFERENCES categorias_carrera(id_categoria) ON DELETE CASCADE
);
