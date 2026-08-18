-- 1. Top 3 por puntaje
SELECT nick, puntaje, nivel FROM `ejercicio-002-bas-jugadores` 
ORDER BY puntaje DESC LIMIT 3;

-- 2. Jugadores activos con >50 victorias
SELECT nick, victorias, tasa_win FROM `ejercicio-002-bas-jugadores` 
WHERE activo=1 AND victorias>50;

-- 3. Estadísticas generales
SELECT COUNT(*) AS total, AVG(nivel) AS niv_prom, 
       AVG(puntaje) AS pts_prom, SUM(victorias) AS total_win
FROM `ejercicio-002-bas-jugadores`;

-- 4. Jugadores con tasa_win > 40% y nivel > 30
SELECT nick, nivel, tasa_win FROM `ejercicio-002-bas-jugadores` 
WHERE tasa_win > 40 AND nivel > 30 ORDER BY tasa_win DESC;

-- 5. Jugadores registrados en 2024
SELECT nick, fecha_reg, nivel FROM `ejercicio-002-bas-jugadores` 
WHERE YEAR(fecha_reg)=2024 ORDER BY fecha_reg;