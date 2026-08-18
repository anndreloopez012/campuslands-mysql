-- Campuslands MySQL - basico ejercicio 058
-- Resolucion: maria-montepeque
-- Tema: academia tech
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS alumnos_tech_basico;

CREATE TABLE alumnos_tech_basico (
  id_alumno INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  programa ENUM('desarrollo_web','ciencia_datos','ciberseguridad','devops','diseno_ux') NOT NULL,
  estado ENUM('activo','pausado','graduado','retirado') NOT NULL DEFAULT 'activo',
  fecha_inscripcion DATE NOT NULL,
  progreso_porcentaje DECIMAL(5,2) NOT NULL DEFAULT 0,
  CONSTRAINT chk_alumnos_tech_basico_progreso CHECK (progreso_porcentaje BETWEEN 0 AND 100)
);
