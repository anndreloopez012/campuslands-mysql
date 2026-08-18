-- Campuslands MySQL - avanzado ejercicio 008
-- Resolución por: Sergio Miranda Ajú
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS ejercicio_008_futbol_sala;

CREATE TABLE ejercicio_008_futbol_sala (
  id INT AUTO_INCREMENT PRIMARY KEY,
  jugador VARCHAR(100) NOT NULL,
  equipo VARCHAR(80) NOT NULL,
  posicion ENUM('cierre', 'ala', 'pivot', 'portero') NOT NULL,
  goles_anotados INT NOT NULL DEFAULT 0,
  asistencias INT NOT NULL DEFAULT 0,
  tarjetas_amarillas INT NOT NULL DEFAULT 0,
  estado ENUM('activo', 'lesionado', 'suspendido') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CONFIGURACIÓN DE ROLES Y PERMISOS EN MYSQL

-- 1. Crear roles personalizados
CREATE ROLE IF NOT EXISTS 'rol_analista_futsal', 'rol_administrador_futsal';

-- 2. Asignar permisos al rol de analista (Solo lectura de datos y reportes)
GRANT SELECT ON campuslands_mysql.ejercicio_008_futbol_sala TO 'rol_analista_futsal';

-- 3. Asignar permisos al rol de administrador (Control total de DML y consultas)
GRANT SELECT, INSERT, UPDATE, DELETE ON campuslands_mysql.ejercicio_008_futbol_sala TO 'rol_administrador_futsal';

-- 4. Crear usuarios de prueba para la academia y asignarles sus respectivos roles
CREATE USER IF NOT EXISTS 'analista_user'@'localhost' IDENTIFIED BY 'PassAnalista2026*';
CREATE USER IF NOT EXISTS 'admin_user'@'localhost' IDENTIFIED BY 'PassAdmin2026*';

GRANT 'rol_analista_futsal' TO 'analista_user'@'localhost';
GRANT 'rol_administrador_futsal' TO 'admin_user'@'localhost';

-- Aplicar los cambios de privilegios
FLUSH PRIVILEGES;