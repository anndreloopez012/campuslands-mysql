-- funcionalidades/ejercicio-003 - maria-montepeque
USE campuslands_mysql;

INSERT INTO jugadores_pingpong
    (alias, nombre_completo, club, ranking_puntos)
VALUES
    ('SpinMaster', 'Elena Duarte', 'Club Rojo Veloz', 1850),
    ('SmashKing', 'Bryan Ortiz', 'Club Rojo Veloz', 1720),
    ('LoopQueen', 'Paola Ramos', 'Paleta de Oro', 1690),
    ('BlockWall', 'Ivan Cifuentes', 'Paleta de Oro', 1540),
    ('FlickFast', 'Sofia Aguilar', 'Sin club', 1200),
    ('ChopKing', 'Marco Reyes', 'Titanes del Ping', 1610),
    ('EdgeHunter', 'Renata Solis', 'Titanes del Ping', 1300);

INSERT INTO partidas_pingpong
    (jugador_local_id, jugador_visitante_id, sets_local, sets_visitante, sede, fecha_partida, estado)
VALUES
    (1, 2, 3, 1, 'Polideportivo Central', '2026-05-10', 'jugada'),
    (3, 4, 3, 2, 'Club Paleta de Oro', '2026-05-12', 'jugada'),
    (2, 5, 3, 0, 'Polideportivo Central', '2026-05-15', 'jugada'),
    (6, 7, 3, 1, 'Titanes del Ping - Sede', '2026-05-18', 'jugada'),
    (1, 3, 2, 3, 'Polideportivo Central', '2026-05-20', 'jugada'),
    (4, 6, 0, 0, 'Club Paleta de Oro', '2026-07-30', 'programada'),
    (5, 7, 0, 0, 'Sin sede confirmada', '2026-08-02', 'cancelada');
