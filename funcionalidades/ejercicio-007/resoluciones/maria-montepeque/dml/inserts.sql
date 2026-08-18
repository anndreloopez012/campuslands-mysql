-- funcionalidades/ejercicio-007 - maria-montepeque
USE campuslands_mysql;

-- 8 jugadores. Algunos fueron invitados por otro jugador (referido_por), otros no.
-- 'ZenithArc' (id 8) queda a proposito sin ningun juego en su biblioteca.
INSERT INTO jugadores_gamer (alias, plataforma_principal, referido_por) VALUES
    ('NovaPixel', 'PC', NULL),
    ('ByteRunner', 'PlayStation', 1),
    ('QuestKiller', 'PC', 1),
    ('MysticLoop', 'Xbox', NULL),
    ('PixelSaga', 'Switch', 4),
    ('GhostFrame', 'PC', 2),
    ('EchoRealm', 'PlayStation', NULL),
    ('ZenithArc', 'PC', NULL);

-- 12 juegos asignados a jugadores + 2 en "lista de deseos" (jugador_id NULL, todavia sin dueno).
INSERT INTO juegos_biblioteca (jugador_id, titulo, genero, plataforma, horas_jugadas) VALUES
    (1, 'Estelar: Horizonte Roto', 'RPG', 'PC', 142.5),
    (1, 'Forjadores de Sombra', 'Accion', 'PC', 58.0),
    (2, 'Rally Nocturno', 'Carreras', 'PlayStation', 21.0),
    (2, 'Bastion Eterno', 'Estrategia', 'PlayStation', 76.5),
    (3, 'Estelar: Horizonte Roto', 'RPG', 'PC', 12.0),
    (3, 'Reino de Cenizas', 'RPG', 'PC', 95.0),
    (4, 'Modulo Perdido', 'Puzzle', 'Xbox', 14.0),
    (5, 'Saga del Viento', 'Aventura', 'Switch', 33.5),
    (5, 'Modulo Perdido', 'Puzzle', 'Switch', 9.0),
    (6, 'Bastion Eterno', 'Estrategia', 'PC', 40.0),
    (7, 'Rally Nocturno', 'Carreras', 'PlayStation', 5.5),
    (7, 'Reino de Cenizas', 'RPG', 'PlayStation', 3.0),
    (NULL, 'Cronicas del Abismo', 'RPG', 'PC', 0),
    (NULL, 'Vuelo Cero', 'Simulacion', 'PC', 0);
