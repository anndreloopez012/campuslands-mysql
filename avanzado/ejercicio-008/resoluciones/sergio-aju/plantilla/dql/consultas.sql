-- Consultas y verificación de roles para fútbol sala
USE campuslands_mysql;

-- 1. Verificación de permisos y roles actuales del usuario en sesión
SELECT CURRENT_USER() AS usuario_actual, 
       CURRENT_ROLE() AS rol_activo;


-- 2. Consulta de negocio: Goleadores y asistencias combinadas (Ranking de impacto ofensivo)
SELECT 
    jugador, 
    equipo, 
    posicion, 
    goles_anotados, 
    asistencias,
    (goles_anotados + asistencias) AS participacion_total_goles
FROM ejercicio_008_futbol_sala
ORDER BY participacion_total_goles DESC;