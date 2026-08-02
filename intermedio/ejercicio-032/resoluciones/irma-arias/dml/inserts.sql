USE ranking_battle_royale_db;

INSERT INTO clanes (nombre_clan, tag_clan, nivel_clan) VALUES
('Shadow Phantoms', 'PHANT', 8),
('Apex Predators', 'APEX', 10),
('Vortex Gaming', 'VORTX', 5),
('Ghost Legion', 'GHOST', 3);

INSERT INTO jugadores_br (gamertag, puntos_ranking, partidas_jugadas, eliminaciones_totales, id_clan, estado_jugador) VALUES
('Viper_99', 3450, 120, 280, 1, 'leyenda'),
('ShadowSniper', 2900, 95, 210, 1, 'activo'),
('ApexAlpha', 4120, 150, 390, 2, 'leyenda'),
('StormRider', 2750, 88, 175, 2, 'activo'),
('VortexKing', 2100, 75, 130, 3, 'activo'),
('CyberNinja', 1950, 60, 110, 3, 'activo'),
('SoloWanderer', 1800, 50, 95, NULL, 'activo'),
('RogueSpecter', 1650, 45, 80, NULL, 'suspendido');
