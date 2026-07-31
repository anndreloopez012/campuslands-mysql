/*=========================================================
  EJERCICIO 008 - UPDATE PARA FUTBOL SALA
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tabla
=========================================================*/
DROP TABLE IF EXISTS jugadores_futsal;

/*=========================================================
  Tabla principal
=========================================================*/
CREATE TABLE jugadores_futsal(

    id_jugador INT AUTO_INCREMENT PRIMARY KEY,

    nombre_jugador VARCHAR(80) NOT NULL,

    posicion ENUM('Portero','Defensa','Ala','Pivot')
        NOT NULL,

    edad INT NOT NULL
        CHECK(edad BETWEEN 14 AND 40),

    goles INT DEFAULT 0
        CHECK(goles >= 0),

    asistencias INT DEFAULT 0
        CHECK(asistencias >= 0),

    partidos_jugados INT DEFAULT 0
        CHECK(partidos_jugados >= 0),

    estado ENUM('Activo','Inactivo')
        DEFAULT 'Activo'

);