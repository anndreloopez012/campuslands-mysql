# Ejercicio 020 (funcionalidades) - maria-montepeque

Tematica: academia tech. Demuestra `Eventos programados` (`CREATE EVENT`, Event Scheduler) con `estudiantes_academia`, `matriculas_curso` (8 matriculas) y `log_eventos_academia` (donde queda la prueba de que un evento corrio solo).

## Que es

Un evento programado es una rutina SQL que MySQL ejecuta el mismo, en segundo plano, segun un horario (`AT` para una sola vez, `EVERY` para que se repita), sin que ninguna aplicacion externa tenga que llamarlo. Lo revisa un hilo interno del servidor llamado el Event Scheduler.

## Como lo aplique

`ddl/schema.sql` crea 2 eventos:

1. **`evt_marcar_matriculas_vencidas`** (recurrente, `EVERY 5 SECOND`) — marca `'vencida'` cualquier matricula sin pagar cuya `fecha_limite_pago` ya paso, y deja un registro en `log_eventos_academia` cada vez que corre. En produccion esto normalmente seria `EVERY 1 DAY`; se dejo en 5 segundos solo para poder ver varias corridas reales en la misma sesion sin esperar 24 horas.
2. **`evt_bienvenida_unica`** (una sola vez, `AT NOW() + INTERVAL 15 SECOND`) — se dispara una unica vez y el propio Event Scheduler lo borra despues (`ON COMPLETION NOT PRESERVE`, el comportamiento por defecto).

`dql/consultas.sql` documenta la secuencia completa; como un evento corre en segundo plano, no hay una sola sentencia que lo dispare, asi que se valida con esperas reales entre pasos:

1. Se confirma que `event_scheduler` esta `ON` a nivel de servidor (sin esto ningun evento corre; cambiarlo requiere el privilegio `SUPER`/`SYSTEM_VARIABLES_ADMIN`, que `campus` no tiene).
2. Se listan los 2 eventos recien creados con su horario y estado.
3. **Estado ANTES**: las 8 matriculas siguen `'vigente'`, el log esta vacio.
4. Se espera ~35 segundos reales.
5. **Estado DESPUES**: 4 matriculas ahora `'vencida'` (las que no tenian pago y ya paso su fecha limite), y el log muestra 5 filas: 1 de `evt_bienvenida_unica` y 4 de `evt_marcar_matriculas_vencidas` — la primera corrida encontro y marco las 4 matriculas vencidas (`Filas afectadas: 4`), las corridas siguientes ya no encontraron nada que hacer (`Filas afectadas: 0`, el evento es idempotente).
6. `evt_bienvenida_unica` ya no aparece en `information_schema.events`: se autoelimino despues de correr una vez.
7. `ALTER EVENT ... DISABLE` desactiva el evento recurrente sin borrarlo.
8. Se espera otros ~8 segundos: el conteo del log se queda exactamente igual (8 filas antes y despues), confirmando que un evento `DISABLED` de verdad deja de correr, aunque el tiempo siga pasando.
9. Limpieza final con `DROP EVENT`.

## Archivos

- `ddl/schema.sql` — `estudiantes_academia`, `matriculas_curso`, `log_eventos_academia`, y los 2 `CREATE EVENT`.
- `dml/inserts.sql` — 8 estudiantes y 8 matriculas (4 disenadas para quedar vencidas, 2 ya pagadas, 2 con fecha limite futura).
- `dql/consultas.sql` — documenta la secuencia de 8 pasos con las esperas reales indicadas donde ocurren.
- `evidencias/resultados_consultas.txt` — salida real de cada paso, incluyendo el antes/despues de cada espera.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql

# Esperar ~35 segundos y despues:
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 --table campuslands_mysql -e "
SELECT estado_matricula, COUNT(*) FROM matriculas_curso GROUP BY estado_matricula;
SELECT * FROM log_eventos_academia ORDER BY ejecutado_en;"
```

Nota: los horarios (`+15s`, `+25s`, `EVERY 5s`) son cortos a proposito, solo para la demo; en un caso real de "marcar matriculas vencidas" lo normal seria `EVERY 1 DAY`. `evidencias/resultados_consultas.txt` incluye marcas de tiempo reales (`ejecutado_en`) que prueban que cada corrida paso en un momento distinto, no que se simularon de una vez.
