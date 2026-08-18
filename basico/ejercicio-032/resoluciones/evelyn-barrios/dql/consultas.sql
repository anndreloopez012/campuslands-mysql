-- dql/consultas.sql
-- Consultas para analizar los datos del ranking del battle royale.

USE battle_royale_ranking;

-- 1. Top 5 de jugadores por puntos de ranking.
-- Esta es la consulta principal para mostrar la tabla de líderes.
SELECT 
    nombre_jugador,
    rango,
    puntos_ranking,
    victorias
FROM ranking_jugadores
ORDER BY puntos_ranking DESC
LIMIT 5;

-- 2. Estadísticas promedio por rango.
-- Ayuda a entender el nivel de habilidad en cada división.
SELECT 
    rango,
    COUNT(*) AS numero_de_jugadores,
    AVG(puntos_ranking) AS puntos_promedio,
    AVG(kda_ratio) AS kda_promedio
FROM ranking_jugadores
GROUP BY rango
ORDER BY FIELD(rango, 'Bronce', 'Plata', 'Oro', 'Platino', 'Diamante', 'Maestro');

-- 3. Jugadores con un KDA ratio superior a 3.0 y más de 20 victorias.
-- Filtra a los jugadores de élite con alto rendimiento.
SELECT nombre_jugador, rango, kda_ratio, victorias
FROM ranking_jugadores
WHERE kda_ratio > 3.0 AND victorias > 20;

-- 4. Jugadores más activos recientemente (que jugaron hoy).
SELECT nombre_jugador, rango, ultima_partida
FROM ranking_jugadores
WHERE DATE(ultima_partida) = CURDATE()
ORDER BY ultima_partida DESC;

-- 5. Tasa de victorias por jugador (porcentaje de partidas ganadas).
-- Se calcula (victorias / partidas_jugadas) * 100.
SELECT
    nombre_jugador,
    partidas_jugadas,
    victorias,
    (victorias / partidas_jugadas) * 100 AS tasa_de_victorias_porcentaje
FROM ranking_jugadores
WHERE partidas_jugadas > 0
ORDER BY tasa_de_victorias_porcentaje DESC;