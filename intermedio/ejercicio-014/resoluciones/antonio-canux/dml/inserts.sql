-- Datos de practica para saga de ciencia ficcion (Vistas Simples).
USE campuslands_mysql;

INSERT INTO intermedio_ejercicio_014_facciones (nombre, alineacion) 
    VALUES ('Orden Jedi', 'Luz'),
    ('Imperio Galactico', 'Oscuridad'),
    ('Alianza Rebelde', 'Luz'),
    ('Sindicato Hutt', 'Neutral'),
    ('Cazarrecompensas Independientes', 'Neutral');

INSERT INTO intermedio_ejercicio_014_personajes (faccion_id, nombre, especie, planeta_origen) 
    VALUES (1, 'Luke Skywalker', 'Humano', 'Tatooine'),
    (1, 'Yoda', 'Desconocida', 'Desconocido'),
    (2, 'Darth Vader', 'Humano', 'Tatooine'),
    (2, 'Emperador Palpatine', 'Humano', 'Naboo'),
    (3, 'Leia Organa', 'Humano', 'Alderaan'),
    (3, 'Han Solo', 'Humano', 'Corellia'),
    (3, 'Chewbacca', 'Wookiee', 'Kashyyyk'),
    (4, 'Jabba the Hutt', 'Hutt', 'Nal Hutta'),
    (5, 'Boba Fett', 'Clon Humano', 'Kamino'),
    (1, 'Obi-Wan Kenobi', 'Humano', 'Stewjon');