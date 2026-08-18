# Ejercicio 012 (funcionalidades) - maria-montepeque

Tematica: estudio de tatuajes. Demuestra `Procedimientos almacenados` con `artistas_tatuaje` (5 artistas) y `citas_tatuaje` (14 citas), usando 5 procedimientos.

## Que es

Un procedimiento almacenado (`CREATE PROCEDURE`) es una rutina SQL con nombre y parametros, guardada dentro de la base de datos. Permite meter logica de negocio (calculos, validaciones, varios pasos) en un solo lugar reutilizable, en vez de repetirla en cada aplicacion que se conecta a la base de datos.

## Como lo aplique

`ddl/schema.sql` crea las tablas y 5 procedimientos:

1. **`sp_listar_citas_artista(IN p_artista_id)`** — parametro `IN` simple, filtra y devuelve un `SELECT`.
2. **`sp_agendar_cita(IN p_artista_id, IN p_cliente, IN p_fecha, IN p_horas)`** — encapsula una regla de negocio: calcula `costo_total = horas * tarifa_hora` leyendo la tarifa **actual** del artista, y corta la operacion con `SIGNAL` si el artista no existe.
3. **`sp_resumen_artista(IN p_artista_id, OUT p_total_citas, OUT p_ingresos_totales)`** — parametros `OUT`: devuelve totales calculados (solo citas `completada`) en variables de sesion en vez de un `SELECT`.
4. **`sp_completar_cita(IN p_cita_id)`** — logica condicional con `IF`/`SIGNAL`: solo deja pasar una cita de `agendada` a `completada`; si ya esta completada o cancelada, rechaza el cambio con un mensaje propio en vez de fallar en silencio.
5. **`sp_recalcular_tarifas(IN p_artista_id, IN p_nueva_tarifa)`** — usa un `CURSOR` para recorrer, una por una, las citas `agendada` del artista y recalcular su `costo_total` con la tarifa nueva. Las citas `completada` **no** se tocan porque ya se cobraron con la tarifa vieja.

`dql/consultas.sql` llama a los 5 y valida el resultado con `SELECT`:

- `CALL sp_listar_citas_artista(1)` — las 3 citas de Renata Salgado.
- `CALL sp_agendar_cita(1, 'Bianca Ferrer', '2026-09-12', 2.5)` — inserta con `costo_total = 112.50` (2.5 × 45.00) calculado solo.
- `CALL sp_resumen_artista(1, @total_citas, @ingresos_totales)` — da `2` citas y `225.00` (135 + 90), sin contar la recien agendada porque no esta `completada`.
- `CALL sp_completar_cita(3)` — pasa la cita de Miguel Torres a `completada`; el resumen de Renata sube a `3` citas y `405.00`.
- `CALL sp_recalcular_tarifas(3, 48.00)` — sube la tarifa de Daniela Fox de 40.00 a 48.00; su unica cita `agendada` (Diego Salas, 2 horas) pasa de `80.00` a `96.00`; sus 2 citas `completada` se quedan igual (`100.00` y `120.00`).
- Dos llamadas que **deben fallar**: completar la cita 3 otra vez (ya esta `completada`) y completar la cita 5 (esta `cancelada`). Ambas devuelven el mismo error personalizado: `Solo se puede completar una cita que este agendada.`

## Archivos

- `ddl/schema.sql` — `artistas_tatuaje`, `citas_tatuaje` y los 5 procedimientos.
- `dml/inserts.sql` — 5 artistas y 14 citas.
- `dql/consultas.sql` — llamadas a los 5 procedimientos con sus `SELECT` de validacion, mas 2 llamadas comentadas que deben fallar.
- `evidencias/resultados_consultas.txt` — salida real de todas las llamadas y de las 2 pruebas de fallo, ejecutadas contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```

Nota: el script de `dql/consultas.sql` **no es idempotente** (agenda una cita nueva y completa otra), asi que si se vuelve a correr sin antes repetir `ddl/schema.sql` + `dml/inserts.sql`, los resultados van a ser distintos a los de `evidencias/resultados_consultas.txt`. Las 2 llamadas que deben fallar (al final del archivo, comentadas) se ejecutan aparte.
