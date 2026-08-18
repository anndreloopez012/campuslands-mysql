USE campuslands_mysql;

INSERT INTO futsal_equipos_3fn (nombre_equipo, ciudad, estadio) VALUES
('Halcones Sala',   'Guatemala',      'Polideportivo Central'),
('Furia Interior',  'Quetzaltenango', 'Coliseo Xela'),
('Rayo Central',    'Escuintla',      'Domo Escuintla'),
('Titanes Sala',    'Coban',          'Gimnasio Municipal');

INSERT INTO futsal_jugadores_3fn (nombre_jugador, id_equipo, goles_temporada, estado) VALUES
('Kevin Toc',    1, 12, 'activo'),
('Bryan Ixchel', 1, 5,  'activo'),
('Oscar Ba',     2, 8,  'activo'),
('Luis Mux',     2, 0,  'activo'),
('Erick Coc',    3, 15, 'activo'),
('Jorge Tzul',   3, 3,  'lesionado'),
('Manuel Pu',    4, 6,  'activo'),
('Cesar Ixim',   4, 0,  'activo');