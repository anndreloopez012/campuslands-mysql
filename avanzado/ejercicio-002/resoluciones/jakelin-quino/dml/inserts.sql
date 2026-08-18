-- Datos de jugadores
INSERT INTO `ejercicio-002-adv-jugadores` VALUES 
(1, 'ProPlayer', 85, 12450.50, 45, 120),
(2, 'RushKing', 67, 21000.00, 62, 150),
(3, 'SniperElite', 42, 5800.75, 28, 80),
(4, 'LoneWolf', 55, 12500.25, 38, 95),
(5, 'WarMachine', 90, 35000.00, 78, 200),
(6, 'NoobMaster', 3, 150.00, 2, 25),
(7, 'BotHunter', 2, 50.00, 0, 10);

-- Procedimiento 1: Top jugadores por puntaje
DELIMITER //
CREATE PROCEDURE `sp_top_jugadores`(IN limite INT)
BEGIN
    SELECT nick, puntaje, nivel 
    FROM `ejercicio-002-adv-jugadores`
    ORDER BY puntaje DESC LIMIT limite;
END //
DELIMITER ;

-- Procedimiento 2: Actualizar nivel por victorias
DELIMITER //
CREATE PROCEDURE `sp_actualizar_nivel`()
BEGIN
    UPDATE `ejercicio-002-adv-jugadores`
    SET nivel = nivel + FLOOR(victorias / 10);
END //
DELIMITER ;