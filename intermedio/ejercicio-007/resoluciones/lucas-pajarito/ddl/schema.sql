/*=========================================================
  EJERCICIO 007 - NORMALIZACIÓN 2FN
  Tema: Liga de Fútbol
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tablas
=========================================================*/

DROP TABLE IF EXISTS equipos_liga_07;
DROP TABLE IF EXISTS entrenadores_liga;
DROP TABLE IF EXISTS ciudades_liga;


/*=========================================================
  Tabla: ciudades_liga
=========================================================*/

CREATE TABLE ciudades_liga(

    id_ciudad INT AUTO_INCREMENT PRIMARY KEY,

    nombre_ciudad VARCHAR(60) NOT NULL UNIQUE

);


/*=========================================================
  Tabla: entrenadores_liga
=========================================================*/

CREATE TABLE entrenadores_liga(

    id_entrenador INT AUTO_INCREMENT PRIMARY KEY,

    nombre_entrenador VARCHAR(80) NOT NULL

);


/*=========================================================
  Tabla principal
=========================================================*/

CREATE TABLE equipos_liga_07(

    id_equipo INT AUTO_INCREMENT PRIMARY KEY,

    nombre_equipo VARCHAR(70) NOT NULL,

    id_ciudad INT NOT NULL,

    id_entrenador INT NOT NULL,

    partidos_jugados INT NOT NULL
        CHECK(partidos_jugados >= 0),

    partidos_ganados INT NOT NULL
        CHECK(partidos_ganados >= 0),

    partidos_empatados INT NOT NULL
        CHECK(partidos_empatados >= 0),

    partidos_perdidos INT NOT NULL
        CHECK(partidos_perdidos >= 0),

    goles_favor INT NOT NULL
        CHECK(goles_favor >= 0),

    goles_contra INT NOT NULL
        CHECK(goles_contra >= 0),

    puntos INT NOT NULL
        CHECK(puntos >= 0),

    estado ENUM('Activo','Inactivo')
        DEFAULT 'Activo',

    CONSTRAINT fk_equipo_ciudad
        FOREIGN KEY(id_ciudad)
        REFERENCES ciudades_liga(id_ciudad),

    CONSTRAINT fk_equipo_entrenador
        FOREIGN KEY(id_entrenador)
        REFERENCES entrenadores_liga(id_entrenador)

);