/*=========================================================
  EJERCICIO 007 - VISTAS AVANZADAS
  Tema: Liga de Fútbol
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de vistas
=========================================================*/

DROP VIEW IF EXISTS vw_tabla_posiciones;
DROP VIEW IF EXISTS vw_estadisticas_entrenadores;
DROP VIEW IF EXISTS vw_ranking_goleadores;
DROP VIEW IF EXISTS vw_equipos_activos;
DROP VIEW IF EXISTS vw_resumen_liga;

/*=========================================================
  Eliminación de tablas
=========================================================*/

DROP TABLE IF EXISTS equipos_liga_vw;
DROP TABLE IF EXISTS entrenadores_liga_vw;
DROP TABLE IF EXISTS ciudades_liga_vw;

/*=========================================================
  Tabla: ciudades_liga_vw
=========================================================*/

CREATE TABLE ciudades_liga_vw(

    id_ciudad INT AUTO_INCREMENT PRIMARY KEY,

    nombre_ciudad VARCHAR(60) NOT NULL UNIQUE

);

/*=========================================================
  Tabla: entrenadores_liga_vw
=========================================================*/

CREATE TABLE entrenadores_liga_vw(

    id_entrenador INT AUTO_INCREMENT PRIMARY KEY,

    nombre_entrenador VARCHAR(80) NOT NULL

);

/*=========================================================
  Tabla principal
=========================================================*/

CREATE TABLE equipos_liga_vw(

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

    CONSTRAINT fk_vw_ciudad
        FOREIGN KEY(id_ciudad)
        REFERENCES ciudades_liga_vw(id_ciudad),

    CONSTRAINT fk_vw_entrenador
        FOREIGN KEY(id_entrenador)
        REFERENCES entrenadores_liga_vw(id_entrenador)

);