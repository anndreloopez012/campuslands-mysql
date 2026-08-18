-- Campuslands MySQL - funcionalidades ejercicio 002
-- Resolucion: maria-montepeque
-- Tema: carreras urbanas
-- Funcionalidad: Tipos de datos MySQL
-- Ejecuta este archivo antes de inserts.sql.
--
-- Estrategia de la demostracion: se crean DOS tablas con la misma
-- informacion de corredores de una carrera urbana. Una usa VARCHAR
-- para todo (el error mas comun de quien no piensa en tipos de datos)
-- y la otra usa el tipo correcto para cada dato: DECIMAL para dinero,
-- DATE para fechas, TIME para tiempos de llegada y JSON para los
-- tiempos por punto de control (dato semiestructurado, variable por
-- corredor). Cada demostracion en dml/inserts.sql y dql/consultas.sql
-- compara el mismo problema resuelto en ambas tablas.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS corredores_mal_tipado_demo;
DROP TABLE IF EXISTS corredores_bien_tipado_demo;

-- Tabla MAL disenada: todo como VARCHAR, incluyendo datos que tienen
-- un tipo nativo obvio en MySQL. MySQL la crea sin quejarse, porque
-- sintacticamente es valida; el problema aparece al consultar los datos.
CREATE TABLE corredores_mal_tipado_demo (
  id_corredor INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  precio_inscripcion VARCHAR(20) NOT NULL,
  fecha_carrera VARCHAR(20) NOT NULL,
  tiempo_llegada VARCHAR(20) NOT NULL,
  checkpoints VARCHAR(255) NOT NULL
);

-- Tabla BIEN disenada: un tipo de MySQL por cada dato, elegido segun
-- lo que realmente representa.
CREATE TABLE corredores_bien_tipado_demo (
  id_corredor INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  precio_inscripcion DECIMAL(10,2) NOT NULL,
  fecha_carrera DATE NOT NULL,
  tiempo_llegada TIME NOT NULL,
  checkpoints JSON NOT NULL,
  CONSTRAINT chk_corredores_bien_tipado_demo_precio CHECK (precio_inscripcion > 0)
);
