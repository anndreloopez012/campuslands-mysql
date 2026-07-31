/*=========================================================
  EJERCICIO 007 - ORDER BY
  Tema: Liga de Fútbol
  Archivo: dml/inserts.sql
=========================================================*/

USE campuslands_mysql;

/*=========================================================
  INSERTS - LIGA DE FÚTBOL
=========================================================*/

INSERT INTO liga_futbol
(nombre_equipo, ciudad, entrenador, partidos_jugados, partidos_ganados,
 partidos_empatados, partidos_perdidos, goles_favor, goles_contra,
 puntos, estado)
VALUES

('Real Madrid','Madrid','Carlo Ancelotti',38,30,5,3,92,28,95,'Activo'),

('Manchester City','Manchester','Pep Guardiola',38,28,6,4,89,31,90,'Activo'),

('Bayern Munich','Múnich','Thomas Tuchel',34,25,5,4,85,33,80,'Activo'),

('Barcelona','Barcelona','Xavi Hernández',38,26,7,5,81,35,85,'Activo'),

('Paris Saint-Germain','París','Luis Enrique',34,24,7,3,83,29,79,'Activo'),

('Juventus','Turín','Massimiliano Allegri',38,21,10,7,62,36,73,'Activo'),

('Liverpool','Liverpool','Jürgen Klopp',38,24,8,6,86,42,80,'Activo'),

('Inter de Milán','Milán','Simone Inzaghi',38,29,5,4,88,27,92,'Activo'),

('Borussia Dortmund','Dortmund','Edin Terzić',34,20,8,6,74,45,68,'Activo'),

('Arsenal','Londres','Mikel Arteta',38,27,6,5,87,34,87,'Activo');