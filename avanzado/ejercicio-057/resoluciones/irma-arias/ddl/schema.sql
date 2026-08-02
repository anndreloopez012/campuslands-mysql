DROP DATABASE IF EXISTS accion_aventura_db;
CREATE DATABASE accion_aventura_db;
USE accion_aventura_db;

CREATE TABLE misiones_aventura (
    id_mision INT AUTO_INCREMENT PRIMARY KEY,
    nombre_mision VARCHAR(100) NOT NULL,
    region_mapa VARCHAR(50) NOT NULL,
    nivel_dificultad INT UNSIGNED CHECK (nivel_dificultad >= 1 AND nivel_dificultad <= 10),
    recompensa_oro DECIMAL(10,2) CHECK (recompensa_oro >= 0),
    puntuacion_honor DECIMAL(3,1) CHECK (puntuacion_honor >= 0 AND puntuacion_honor <= 10),
    estado ENUM('completada', 'en_curso', 'bloqueada') DEFAULT 'en_curso'
);
