-- funcionalidades/ejercicio-019 - maria-montepeque
USE campuslands_mysql;

-- 5 partidas guardadas. 'Kaelen Voss' tiene 2 checkpoints (ids 1 y 4).
INSERT INTO partidas_guardadas (jugador, nivel_actual, puntos_experiencia, ubicacion, fecha_guardado) VALUES
    ('Kaelen Voss', 12, 8400, 'Ruinas de Ashfall', '2026-06-01 20:15:00'),
    ('Mira Solene', 8, 5200, 'Bosque Sombrio', '2026-06-03 21:40:00'),
    ('Dorian Thackeray', 15, 11300, 'Ciudadela de Hierro', '2026-06-05 19:05:00'),
    ('Kaelen Voss', 14, 9750, 'Cumbre Helada', '2026-06-10 22:30:00'),
    ('Yara Nix', 6, 3100, 'Puerto Abandonado', '2026-06-12 18:50:00');

INSERT INTO objetos_recolectados (partida_id, nombre_objeto, cantidad) VALUES
    (1, 'Fragmento de Cristal Antiguo', 3),
    (1, 'Pocion de Vida', 5),
    (2, 'Llave Oxidada', 1),
    (2, 'Pergamino Arcano', 2),
    (3, 'Espada del Alba', 1),
    (3, 'Escudo de Hierro Forjado', 1),
    (3, 'Pocion de Vida', 8),
    (4, 'Fragmento de Cristal Antiguo', 7),
    (4, 'Amuleto de Resistencia al Frio', 1),
    (5, 'Mapa del Tesoro Hundido', 1);
