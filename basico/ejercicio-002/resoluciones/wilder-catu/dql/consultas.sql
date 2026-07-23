USE campuslands_mysql;

-- =====================================================
-- 1. Top 5 jugadores por puntaje
-- =====================================================

SELECT
    nombre AS Jugador,
    puntaje AS Puntaje
FROM jugadores
ORDER BY puntaje DESC
LIMIT 5;


-- =====================================================
-- 2. Jugador con mayor puntaje
-- =====================================================

SELECT
    nombre AS Jugador,
    puntaje AS Puntaje
FROM jugadores
ORDER BY puntaje DESC
LIMIT 1;