USE campuslands_mysql;

-- 1. Estado actual de todos los eventos tras los bloqueos y actualizaciones
SELECT nombre_evento, cupo_total, cupo_ocupado, estado
FROM kickboxing_inscripciones
ORDER BY fecha_evento;

-- 2. Confirmar que Torneo Nocturno subio a 10/10 tras la inscripcion con FOR UPDATE
SELECT nombre_evento, cupo_total, cupo_ocupado
FROM kickboxing_inscripciones
WHERE id_evento = 4;

-- 3. Confirmar que Copa Elite Kickboxing sigue en 15/15 (el intento de sobrecupo no aplico)
SELECT nombre_evento, cupo_total, cupo_ocupado
FROM kickboxing_inscripciones
WHERE id_evento = 2;

-- 4. Eventos que quedaron cerrados automaticamente por el LOCK TABLES + UPDATE
SELECT nombre_evento, cupo_total, cupo_ocupado, estado
FROM kickboxing_inscripciones
WHERE estado = 'cerrado';

-- 5. Eventos con cupo disponible, candidatos a nuevas inscripciones (caso de negocio)
SELECT nombre_evento, (cupo_total - cupo_ocupado) AS cupos_disponibles
FROM kickboxing_inscripciones
WHERE estado = 'abierto' AND cupo_ocupado < cupo_total
ORDER BY cupos_disponibles ASC;