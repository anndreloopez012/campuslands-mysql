/*=========================================================
  EJERCICIO 008 - NORMALIZACION 3FN FUTSAL
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tablas
=========================================================*/
DROP TABLE IF EXISTS estadisticas_jugador_fs;
DROP TABLE IF EXISTS jugadores_fs;
DROP TABLE IF EXISTS clubes_fs;
DROP TABLE IF EXISTS ciudades_fs;

/*=========================================================
  Tabla: ciudades_fs
=========================================================*/
CREATE TABLE ciudades_fs(

    id_ciudad INT AUTO_INCREMENT PRIMARY KEY,

    nombre_ciudad VARCHAR(60) NOT NULL UNIQUE

);

/*=========================================================
  Tabla: clubes_fs
=========================================================*/
CREATE TABLE clubes_fs(

    id_club INT AUTO_INCREMENT PRIMARY KEY,

    nombre_club VARCHAR(80) NOT NULL UNIQUE,

    id_ciudad INT NOT NULL,

    estado ENUM('Activo','Inactivo') DEFAULT 'Activo',

    CONSTRAINT fk_club_ciudad
        FOREIGN KEY(id_ciudad)
        REFERENCES ciudades_fs(id_ciudad)

);

/*=========================================================
  Tabla: jugadores_fs
=========================================================*/
CREATE TABLE jugadores_fs(

    id_jugador INT AUTO_INCREMENT PRIMARY KEY,

    nombre_jugador VARCHAR(80) NOT NULL,

    posicion ENUM('Portero','Defensa','Ala','Pivot') NOT NULL,

    edad INT NOT NULL
        CHECK(edad BETWEEN 15 AND 40),

    id_club INT NOT NULL,

    CONSTRAINT fk_jugador_club
        FOREIGN KEY(id_club)
        REFERENCES clubes_fs(id_club)

);

/*=========================================================
  Tabla: estadisticas_jugador_fs
=========================================================*/
CREATE TABLE estadisticas_jugador_fs(

    id_estadistica INT AUTO_INCREMENT PRIMARY KEY,

    id_jugador INT NOT NULL UNIQUE,

    partidos INT DEFAULT 0 CHECK(partidos >= 0),

    goles INT DEFAULT 0 CHECK(goles >= 0),

    asistencias INT DEFAULT 0 CHECK(asistencias >= 0),

    tarjetas_amarillas INT DEFAULT 0 CHECK(tarjetas_amarillas >= 0),

    CONSTRAINT fk_estadistica_jugador
        FOREIGN KEY(id_jugador)
        REFERENCES jugadores_fs(id_jugador)

);