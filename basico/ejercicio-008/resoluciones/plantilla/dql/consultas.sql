-- Actualización 1: Registrar el desempeño tras un partido para un jugador específico (Pívot Mateo Rossi)
UPDATE jugadores_futsal
SET partidos_jugados = partidos_jugados + 1,
    goles_anotados = goles_anotados + 2,
    asistencias = asistencias + 1
WHERE jugador_id = 1;

-- Actualización 2: Aplicar suspensión automática a jugadores que acumularon 5 o más tarjetas amarillas
UPDATE jugadores_futsal
SET estado = 'Suspendido'
WHERE tarjetas_amarillas >= 5 
  AND estado = 'Activo';

-- Actualización 3: Dar de alta médica a un jugador lesionado
UPDATE jugadores_futsal
SET estado = 'Activo'
WHERE jugador_id = 6 
  AND estado = 'Lesionado';

-- Consulta DQL 1: Verificar cambios en estadísticas individuales
SELECT 
    jugador_id,
    nombre_completo,
    posicion,
    partidos_jugados,
    goles_anotados,
    asistencias
FROM jugadores_futsal
WHERE jugador_id = 1;

-- Consulta DQL 2: Listar jugadores suspendidos por amonestaciones
SELECT 
    jugador_id,
    nombre_completo,
    tarjetas_amarillas,
    estado
FROM jugadores_futsal
WHERE estado = 'Suspendido';

-- Consulta DQL 3: Reporte general de la plantilla tras las actualizaciones
SELECT 
    jugador_id,
    nombre_completo,
    posicion,
    partidos_jugados,
    goles_anotados,
    asistencias,
    tarjetas_amarillas,
    estado
FROM jugadores_futsal
ORDER BY goles_anotados DESC;