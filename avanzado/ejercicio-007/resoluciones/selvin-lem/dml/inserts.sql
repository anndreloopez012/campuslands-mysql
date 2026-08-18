USE campuslands_mysql;

INSERT INTO liga_equipos_v2 (nombre_equipo, ciudad, estado) VALUES
('Aguilas FC',      'Guatemala',  'activo'),
('Tigres Unidos',   'Quetzaltenango', 'activo'),
('Leones del Sur',  'Escuintla',  'activo'),
('Halcones FC',     'Coban',      'sancionado'),
('Panteras Negras', 'Antigua',    'activo');

INSERT INTO liga_partidos (id_equipo_local, id_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES
(1, 2, 2, 1, '2026-06-01'),
(3, 1, 0, 3, '2026-06-08'),
(2, 4, 1, 1, '2026-06-15'),
(5, 3, 2, 2, '2026-06-22'),
(1, 5, 4, 0, '2026-06-29');