-- Equipos Battle Royale
INSERT INTO `ejercicio-002-int-equipos` VALUES 
(1, 'Fury', 'LATAM'),
(2, 'Wolves', 'NA'),
(3, 'Knights', 'EU'),
(4, 'Phoenix', 'ASIA');

-- Jugadores (algunos sin equipo para probar LEFT JOIN)
INSERT INTO `ejercicio-002-int-jugadores` VALUES 
(1, 1, 'ProPlayer', 12450.50, 85),
(2, 1, 'RushKing', 21000.00, 67),
(3, 2, 'SniperElite', 5800.75, 42),
(4, 2, 'LoneWolf', 12500.25, 55),
(5, 3, 'WarMachine', 35000.00, 90),
(6, NULL, 'NoobMaster', 150.00, 3),
(7, NULL, 'BotHunter', 50.00, 2),
(8, 4, 'ShadowStrike', 8000.00, 48),
(9, 4, 'NinjaPro', 15000.50, 72);