-- Campuslands MySQL - intermedio ejercicio 058
-- Resolucion: maria-montepeque
-- Tema: academia tech
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS matriculas_intermedio;
DROP TABLE IF EXISTS talleres_intermedio;
DROP TABLE IF EXISTS alumnos_academia_intermedio;

CREATE TABLE alumnos_academia_intermedio (
  id_alumno INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  email VARCHAR(160) NOT NULL UNIQUE
);

CREATE TABLE talleres_intermedio (
  id_taller INT AUTO_INCREMENT PRIMARY KEY,
  nombre_taller VARCHAR(120) NOT NULL UNIQUE,
  categoria ENUM('backend','frontend','datos','infraestructura','seguridad') NOT NULL,
  duracion_horas INT NOT NULL,
  CONSTRAINT chk_talleres_intermedio_duracion CHECK (duracion_horas > 0)
);

-- Tabla puente: un alumno puede inscribirse en varios talleres y un
-- taller puede tener varios alumnos (muchos a muchos). La llave
-- primaria compuesta evita que el mismo alumno quede inscrito dos
-- veces en el mismo taller.
CREATE TABLE matriculas_intermedio (
  id_alumno INT NOT NULL,
  id_taller INT NOT NULL,
  fecha_inscripcion DATE NOT NULL,
  calificacion_final DECIMAL(4,2) NULL,
  PRIMARY KEY (id_alumno, id_taller),
  CONSTRAINT fk_matriculas_intermedio_alumno FOREIGN KEY (id_alumno) REFERENCES alumnos_academia_intermedio (id_alumno),
  CONSTRAINT fk_matriculas_intermedio_taller FOREIGN KEY (id_taller) REFERENCES talleres_intermedio (id_taller),
  CONSTRAINT chk_matriculas_intermedio_calificacion CHECK (calificacion_final IS NULL OR calificacion_final BETWEEN 0 AND 5)
);
