/*=========================================================
  EJERCICIO 007 - NORMALIZACIÓN 2FN
  Tema: Liga de Fútbol
  Archivo: dml/inserts.sql
=========================================================*/

USE campuslands_mysql;

/*=========================================================
  INSERTS - CIUDADES
=========================================================*/

INSERT INTO ciudades_liga (nombre_ciudad)
VALUES
('Madrid'),
('Manchester'),
('Barcelona'),
('Milán'),
('Londres'),
('París'),
('Múnich'),
('Turín');


/*=========================================================
  INSERTS - ENTRENADORES
=========================================================*/

INSERT INTO entrenadores_liga (nombre_entrenador)
VALUES
('Carlo Ancelotti'),
('Pep Guardiola'),
('Xavi Hernández'),
('Simone Inzaghi'),
('Mikel Arteta'),
('Luis Enrique'),
('Thomas Tuchel'),
('Massimiliano Allegri');


/*=========================================================
  INSERTS - EQUIPOS
=========================================================*/

INSERT INTO equipos_liga_07
(
nombre_equipo,
id_ciudad,
id_entrenador,
partidos_jugados,
partidos_ganados,
partidos_empatados,
partidos_perdidos,
goles_favor,
goles_contra,
puntos,
estado
)
VALUES

('Real Madrid',1,1,38,30,5,3,92,28,95,'Activo'),

('Manchester City',2,2,38,28,6,4,89,31,90,'Activo'),

('Barcelona',3,3,38,26,7,5,81,35,85,'Activo'),

('Inter de Milán',4,4,38,29,5,4,88,27,92,'Activo'),

('Arsenal',5,5,38,27,6,5,87,34,87,'Activo'),

('Paris Saint-Germain',6,6,34,24,7,3,83,29,79,'Activo'),

('Bayern Munich',7,7,34,25,5,4,85,33,80,'Activo'),

('Juventus',8,8,38,21,10,7,62,36,73,'Activo'),

('Liverpool',5,2,38,24,8,6,86,42,80,'Activo'),

('Atlético de Madrid',1,1,38,23,9,6,74,39,78,'Activo');