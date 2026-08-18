USE campuslands_mysql;

INSERT INTO liga_jugadores_2fn (nombre_jugador, posicion, equipo) VALUES
('Kairos',  'mediocampo', 'Aguilas FC'),
('Vantex',  'defensa',    'Aguilas FC'),
('Nyxara',  'portero',    'Aguilas FC'),
('Ferox',   'delantero',  'Tigres Unidos'),
('Serath',  'defensa',    'Tigres Unidos');

INSERT INTO liga_partidos_2fn (rival, fecha_partido) VALUES
('Leones del Sur', '2026-07-01'),
('Halcones FC',    '2026-07-08'),
('Panteras Negras','2026-07-15');

INSERT INTO liga_convocatorias (id_partido, id_jugador, minutos_jugados, goles_partido) VALUES
(1, 1, 90, 1),
(1, 2, 90, 0),
(1, 3, 90, 0),
(2, 1, 75, 0),
(2, 4, 90, 2),
(2, 5, 60, 0),
(3, 1, 90, 1),
(3, 3, 0,  0);