/*=========================================================
  EJERCICIO 008 - ROLES Y PERMISOS FUTSAL
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tablas
=========================================================*/
DROP TABLE IF EXISTS rendimiento_jugador_fsl;
DROP TABLE IF EXISTS jugadores_fsl;
DROP TABLE IF EXISTS equipos_fsl;
DROP TABLE IF EXISTS sedes_fsl;

/*=========================================================
  Tabla: sedes_fsl
=========================================================*/
CREATE TABLE sedes_fsl(

    id_sede INT AUTO_INCREMENT PRIMARY KEY,

    nombre_sede VARCHAR(60) NOT NULL UNIQUE

);

/*=========================================================
  Tabla: equipos_fsl
=========================================================*/
CREATE TABLE equipos_fsl(

    id_equipo INT AUTO_INCREMENT PRIMARY KEY,

    nombre_equipo VARCHAR(80) NOT NULL UNIQUE,

    id_sede INT NOT NULL,

    estado ENUM('Activo','Inactivo') DEFAULT 'Activo',

    CONSTRAINT fk_equipo_sede
        FOREIGN KEY(id_sede)
        REFERENCES sedes_fsl(id_sede)

);

/*=========================================================
  Tabla: jugadores_fsl
=========================================================*/
CREATE TABLE jugadores_fsl(

    id_jugador INT AUTO_INCREMENT PRIMARY KEY,

    nombre_jugador VARCHAR(80) NOT NULL,

    posicion ENUM('Portero','Defensa','Ala','Pivot') NOT NULL,

    edad INT NOT NULL CHECK(edad BETWEEN 15 AND 40),

    id_equipo INT NOT NULL,

    CONSTRAINT fk_jugador_equipo
        FOREIGN KEY(id_equipo)
        REFERENCES equipos_fsl(id_equipo)

);

/*=========================================================
  Tabla: rendimiento_jugador_fsl
=========================================================*/
CREATE TABLE rendimiento_jugador_fsl(

    id_rendimiento INT AUTO_INCREMENT PRIMARY KEY,

    id_jugador INT NOT NULL UNIQUE,

    partidos INT DEFAULT 0 CHECK(partidos >= 0),

    goles INT DEFAULT 0 CHECK(goles >= 0),

    asistencias INT DEFAULT 0 CHECK(asistencias >= 0),

    tarjetas INT DEFAULT 0 CHECK(tarjetas >= 0),

    CONSTRAINT fk_rendimiento_jugador
        FOREIGN KEY(id_jugador)
        REFERENCES jugadores_fsl(id_jugador)

);

/*=========================================================
  ROLES Y PERMISOS
=========================================================*/

-- Eliminar roles si existen
DROP ROLE IF EXISTS rol_analista_fsl;
DROP ROLE IF EXISTS rol_entrenador_fsl;
DROP ROLE IF EXISTS rol_admin_fsl;

-- Crear roles
CREATE ROLE rol_analista_fsl;
CREATE ROLE rol_entrenador_fsl;
CREATE ROLE rol_admin_fsl;

-- Permisos para analista: solo lectura
GRANT SELECT ON campuslands_mysql.* TO rol_analista_fsl;

-- Permisos para entrenador: lectura y actualización
GRANT SELECT, UPDATE ON campuslands_mysql.jugadores_fsl TO rol_entrenador_fsl;
GRANT SELECT, UPDATE ON campuslands_mysql.rendimiento_jugador_fsl TO rol_entrenador_fsl;

-- Permisos para administrador: control total
GRANT ALL PRIVILEGES ON campuslands_mysql.* TO rol_admin_fsl;

FLUSH PRIVILEGES;