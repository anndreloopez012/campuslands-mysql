-- 1. Ver todos los jugadores
SELECT * FROM `ejercicio-002-adv-jugadores`;

-- 2. Llamar procedimiento top 3
CALL `sp_top_jugadores`(3);

-- 3. Llamar procedimiento top 5
CALL `sp_top_jugadores`(5);

-- 4. Ver niveles antes de actualizar
SELECT nick, nivel, victorias FROM `ejercicio-002-adv-jugadores`;

-- 5. Actualizar niveles y ver cambios
CALL `sp_actualizar_nivel`();
SELECT nick, nivel, victorias FROM `ejercicio-002-adv-jugadores`;