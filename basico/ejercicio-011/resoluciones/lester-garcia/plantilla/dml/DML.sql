USE ejercicio_11;

INSERT INTO jugadores
(nombre, nickname, edad, nacionalidad, ranking_actual, activo)
VALUES
('Carlos Méndez', 'SmashKing', 24, 'Guatemala', 1, TRUE),
('Luis Herrera', 'TopSpin', 21, 'México', 2, TRUE),
('Andrés López', 'FastServe', 27, 'Colombia', 3, TRUE),
('Miguel Torres', 'SpinMaster', 23, 'Chile', 4, TRUE),
('Daniel García', 'Blocker', 29, 'Perú', 5, TRUE),
('Jorge Ramírez', 'PowerShot', 31, 'Argentina', 6, TRUE),
('Mateo Castro', 'QuickHands', 19, 'Costa Rica', 7, TRUE),
('Sebastián Ruiz', 'BackSpin', 26, 'España', 8, TRUE),
('Fernando Díaz', 'NetPlayer', 22, 'Honduras', 9, TRUE),
('Ricardo Gómez', 'AceMaster', 30, 'El Salvador', 10, FALSE);

INSERT INTO torneos
(nombre, categoria, fecha_inicio, fecha_fin, premio)
VALUES
('Copa Nacional 2026', 'Profesional', '2026-01-10', '2026-01-15', 5000.00),
('Open Capital', 'Intermedio', '2026-02-05', '2026-02-08', 2500.00),
('Masters Centroamericano', 'Profesional', '2026-03-12', '2026-03-18', 7500.00),
('Liga Juvenil', 'Amateur', '2026-04-02', '2026-04-05', 1000.00),
('Copa Primavera', 'Intermedio', '2026-05-10', '2026-05-14', 3000.00),
('Open Internacional', 'Profesional', '2026-06-01', '2026-06-07', 10000.00),
('Desafio Nacional', 'Amateur', '2026-07-15', '2026-07-18', 1500.00),
('Masters de Verano', 'Profesional', '2026-08-01', '2026-08-07', 8500.00);

INSERT INTO partidos
(id_torneo, jugador_local, jugador_visitante, sets_local, sets_visitante, ganador, fecha_partido)
VALUES
(1, 1, 2, 3, 1, 1, '2026-01-11'),
(1, 3, 4, 2, 3, 4, '2026-01-12'),
(2, 5, 6, 3, 0, 5, '2026-02-06'),
(2, 7, 8, 1, 3, 8, '2026-02-07'),
(3, 1, 3, 3, 2, 1, '2026-03-13'),
(3, 2, 5, 0, 3, 5, '2026-03-14'),
(4, 6, 7, 3, 1, 6, '2026-04-03'),
(5, 8, 9, 3, 2, 8, '2026-05-11'),
(6, 1, 5, 3, 0, 1, '2026-06-02'),
(7, 3, 10, 2, 3, 10, '2026-07-16');