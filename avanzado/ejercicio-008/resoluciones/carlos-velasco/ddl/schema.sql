-- Campuslands MySQL - Avanzado Ejercicio 008
-- Tema: Roles y Permisos

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS jugadores;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    posicion ENUM('Portero','Cierre','Ala','Pívot') NOT NULL,
    edad INT NOT NULL,
    goles INT NOT NULL DEFAULT 0,
    asistencias INT NOT NULL DEFAULT 0,
    estado ENUM('Activo','Lesionado','Suspendido') NOT NULL DEFAULT 'Activo',

    CHECK (edad >= 16),
    CHECK (goles >= 0),
    CHECK (asistencias >= 0)
);


DROP ROLE IF EXISTS administrador_fs;
DROP ROLE IF EXISTS entrenador_fs;
DROP ROLE IF EXISTS analista_fs;

CREATE ROLE administrador_fs;
CREATE ROLE entrenador_fs;
CREATE ROLE analista_fs;


GRANT ALL PRIVILEGES
ON campuslands_mysql.*
TO administrador_fs;

GRANT
SELECT,
INSERT,
UPDATE
ON campuslands_mysql.jugadores
TO entrenador_fs;

GRANT
SELECT
ON campuslands_mysql.jugadores
TO analista_fs;

-- ==========================
-- Ejemplo de usuarios
-- ==========================

DROP USER IF EXISTS 'admin_fs'@'localhost';
DROP USER IF EXISTS 'coach_fs'@'localhost';
DROP USER IF EXISTS 'analista_fs'@'localhost';

CREATE USER 'admin_fs'@'localhost'
IDENTIFIED BY 'Admin123!';

CREATE USER 'coach_fs'@'localhost'
IDENTIFIED BY 'Coach123!';

CREATE USER 'analista_fs'@'localhost'
IDENTIFIED BY 'Analista123!';

GRANT administrador_fs TO 'admin_fs'@'localhost';
GRANT entrenador_fs TO 'coach_fs'@'localhost';
GRANT analista_fs TO 'analista_fs'@'localhost';

SET DEFAULT ROLE administrador_fs TO 'admin_fs'@'localhost';
SET DEFAULT ROLE entrenador_fs TO 'coach_fs'@'localhost';
SET DEFAULT ROLE analista_fs TO 'analista_fs'@'localhost';