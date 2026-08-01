-- DML: Inserción de datos para jugadores de ping pong
USE db_pingpong_avanzado;

INSERT INTO jugadores_pingpong (codigo_jugador, nombre_completo, nivel_categoria, partidos_jugados, partidos_ganados, puntos_ranking, estado) VALUES
('PP-01', 'Mateo Valenzuela', 'Profesional', 25, 20, 1550, 'activo'),
('PP-02', 'Lucia Mendez', 'Avanzado', 20, 15, 1340, 'activo'),
('PP-03', 'Santiago Rios', 'Intermedio', 15, 10, 1120, 'activo'),
('PP-04', 'Valentina Cruz', 'Avanzado', 18, 12, 1250, 'activo'),
('PP-05', 'Julian Cardenas', 'Principiante', 10, 4, 980, 'lesionado'),
('PP-06', 'Camila Pardo', 'Intermedio', 12, 6, 1050, 'activo'),
('PP-07', 'Nicolas Torres', 'Principiante', 8, 2, 910, 'suspendido'),
('PP-08', 'Mariana Gomez', 'Profesional', 22, 18, 1490, 'activo');