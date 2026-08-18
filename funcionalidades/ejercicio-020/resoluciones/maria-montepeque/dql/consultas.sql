-- funcionalidades/ejercicio-020 - maria-montepeque
--
-- Un evento programado corre en segundo plano, en su propio hilo del
-- servidor: no hay una sola sentencia SQL que "dispare" y devuelva el
-- resultado. Por eso este archivo documenta la secuencia con esperas reales
-- (unos segundos) entre pasos; la salida real de cada paso, incluyendo las
-- pausas, esta en evidencias/resultados_consultas.txt.

USE campuslands_mysql;

-- 1. El Event Scheduler tiene que estar ON a nivel de servidor para que
-- CUALQUIER evento corra (sin esto, los eventos quedan creados pero nunca
-- se ejecutan). Cambiarlo requiere el privilegio SUPER/SYSTEM_VARIABLES_ADMIN,
-- que 'campus' no tiene (por eso solo se CONSULTA aqui, no se modifica).
SHOW VARIABLES LIKE 'event_scheduler';

-- 2. Los 2 eventos ya quedaron creados en ddl/schema.sql. Se confirma que
-- MySQL los registro y en que estado quedan (filtrado a 'evt_%' porque este
-- MySQL local ya tiene otros eventos de ejercicios anteriores).
SELECT event_name, event_type, interval_value, interval_field, status, starts
FROM information_schema.events
WHERE event_schema = 'campuslands_mysql' AND event_name LIKE 'evt\_%'
ORDER BY event_name;

-- 3. Estado ANTES de que corra ningun evento: las 8 matriculas siguen
-- 'vigente' y el log esta vacio.
SELECT estado_matricula, COUNT(*) AS total FROM matriculas_curso GROUP BY estado_matricula;
SELECT COUNT(*) AS filas_en_log FROM log_eventos_academia;

-- (Aqui el script espera ~35 segundos reales para que:
--  - evt_bienvenida_unica corra UNA vez (programado a los 15 segundos), y
--  - evt_marcar_matriculas_vencidas corra al menos 2 veces (arranca a los 25
--    segundos y se repite cada 5: una corrida a los 25s y otra a los 30s).
--  Ver evidencias/resultados_consultas.txt para el detalle de la espera.)

-- 4. Estado DESPUES: 4 matriculas ahora 'vencida' (las que no tenian pago y
-- ya paso su fecha limite) y el log tiene filas de AMBOS eventos, sin que
-- nadie ejecutara un UPDATE o INSERT manual.
SELECT estado_matricula, COUNT(*) AS total FROM matriculas_curso GROUP BY estado_matricula;
SELECT evento_nombre, mensaje, ejecutado_en FROM log_eventos_academia ORDER BY ejecutado_en;

-- 5. evt_bienvenida_unica corrio UNA sola vez y luego el propio scheduler lo
-- borro (ON COMPLETION NOT PRESERVE es el default): ya no deberia aparecer
-- en information_schema.events.
SELECT event_name FROM information_schema.events
WHERE event_schema = 'campuslands_mysql' AND event_name = 'evt_bienvenida_unica';

-- 6. Se DESACTIVA el evento recurrente (sin borrarlo) con ALTER EVENT.
ALTER EVENT evt_marcar_matriculas_vencidas DISABLE;

SELECT event_name, status FROM information_schema.events
WHERE event_schema = 'campuslands_mysql' AND event_name = 'evt_marcar_matriculas_vencidas';

-- (Otra espera real de ~8 segundos para confirmar que, estando DISABLED,
-- el evento YA NO agrega filas al log aunque el tiempo siga pasando.)

-- 7. El conteo de filas del log debe ser IGUAL al del paso anterior a la
-- espera: ninguna corrida nueva mientras estuvo desactivado.
SELECT COUNT(*) AS filas_en_log_tras_desactivar FROM log_eventos_academia;

-- 8. Limpieza final.
DROP EVENT IF EXISTS evt_marcar_matriculas_vencidas;
