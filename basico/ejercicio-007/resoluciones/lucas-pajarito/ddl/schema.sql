/*=========================================================
  EJERCICIO 007 - ORDER BY
  Tema: Liga de Fútbol
  Archivo: ddl/schema.sql
=========================================================*/

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

/*=========================================================
  Eliminación de tabla
=========================================================*/

DROP TABLE IF EXISTS liga_futbol;

/*=========================================================
  Creación de tabla
=========================================================*/

CREATE TABLE liga_futbol (

    id_equipo INT AUTO_INCREMENT PRIMARY KEY,

    nombre_equipo VARCHAR(60) NOT NULL,

    ciudad VARCHAR(50) NOT NULL,

    entrenador VARCHAR(80) NOT NULL,

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
        DEFAULT 'Activo'
);