-- campuslands mysql - avanzado ejercicio 001
-- creacion de tablas para torneo esports moba usando el motor InnoDB para transacciones

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

-- desactivamos la revision de claves foraneas por si acaso
SET FOREIGN_KEY_CHECKS = 0;

-- borramos primero las tablas hijas que dependan de equipos
DROP TABLE IF EXISTS transferencias_puntos;
DROP TABLE IF EXISTS jugadores;
DROP TABLE IF EXISTS equipos;

-- volvemos a activar la revision
SET FOREIGN_KEY_CHECKS = 1;

-- tabla 1: equipos del torneo
CREATE TABLE equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puntos INT NOT NULL DEFAULT 0,
    estado ENUM('activo', 'eliminado', 'revision') NOT NULL DEFAULT 'activo',
    creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- tabla 2: registro de transferencias de puntos entre equipos
CREATE TABLE transferencias_puntos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_origen_id INT NOT NULL,
    equipo_destino_id INT NOT NULL,
    puntos_transferidos INT NOT NULL,
    fecha_transferencia DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (equipo_origen_id) REFERENCES equipos(id),
    FOREIGN KEY (equipo_destino_id) REFERENCES equipos(id)
) ENGINE=InnoDB;