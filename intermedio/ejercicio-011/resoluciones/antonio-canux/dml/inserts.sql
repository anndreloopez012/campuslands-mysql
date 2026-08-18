-- Datos de practica para pingpong (10 registros por tabla).
USE campuslands_mysql;

INSERT INTO intermedio_ejercicio_011_jugadores (nombre, ranking_puntos, edad) 
    VALUES ('Fan Zhendong', 3200, 27),
    ('Ma Long', 3150, 35),
    ('Wang Chuqin', 3100, 24),
    ('Hugo Calderano', 2800, 28),
    ('Felix Lebrun', 2750, 17),
    ('Lin Yun-Ju', 2600, 22),
    ('Dimitrij Ovtcharov', 2500, 35),
    ('Truls Moregard', 2450, 22),
    ('Tomokazu Harimoto', 2700, 21),
    ('Alexis Lebrun', 2400, 20);

INSERT INTO intermedio_ejercicio_011_partidos (jugador1_id, jugador2_id, sets_jugador1, sets_jugador2, duracion_minutos) 
    VALUES (1, 2, 3, 2, 45),
    (3, 4, 3, 1, 35),
    (5, 6, 2, 3, 40),
    (7, 8, 3, 0, 25),
    (9, 10, 1, 3, 38),
    (1, 3, 3, 1, 42),
    (2, 4, 3, 0, 28),
    (5, 9, 2, 3, 50),
    (6, 8, 3, 2, 48),
    (7, 10, 0, 3, 22);