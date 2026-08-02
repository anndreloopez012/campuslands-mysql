USE futbol_sala_db;

INSERT INTO sedes_sala (nombre_sede, ciudad) VALUES
('Coliseo El Pueblo', 'Cali'),
('Coliseo Mayor', 'Manizales'),
('Coliseo Live', 'Bogota'),
('Coliseo Ivan de Bedout', 'Medellin');

INSERT INTO equipos_sala (nombre_equipo, id_sede) VALUES
('Leones F.S.', 1),
('Real Bucaramanga F.S.', 2),
('Alianza Tolima', 3),
('Itagui F.S.', 4);

INSERT INTO jugadores_sala (nombre_jugador, dorsal, goles_anotados, id_equipo, estado) VALUES
('Angellot Caro', 10, 14, 1, 'activo'),
('Jhonatan Cardenas', 7, 9, 1, 'activo'),
('Yulieth Rengifo', 8, 11, 2, 'activo'),
('Camilo Gomez', 11, 6, 2, 'lesionado'),
('Felipe Echavarria', 9, 16, 3, 'activo'),
('Stiven Abril', 5, 4, 3, 'sancionado'),
('Richard Gutierrez', 14, 12, 4, 'activo'),
('Jorge Abril', 6, 8, 4, 'activo');
