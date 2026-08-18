# Ejercicio 010 (funcionalidades) - maria-montepeque

Tematica: viajes y turismo. Demuestra `Window Functions` con `destinos_turisticos` (8 destinos) y `reservas_viaje` (25 reservas).

## Que es

Una window function calcula un valor (un ranking, un acumulado, un promedio, el valor de la fila anterior) mirando un conjunto de filas relacionadas — la "ventana", definida con `OVER (PARTITION BY ... ORDER BY ...)` — pero **sin colapsar las filas** como hace `GROUP BY`. Cada fila conserva su detalle y ademas trae el calculo de su ventana.

## Como lo aplique

Dos reservas (`Carlos Mora` en Cartagena y `Luis Prada` en Cusco) quedan con el mismo `costo_total` (1500.00) a proposito, para poder mostrar la diferencia entre `RANK()` y `DENSE_RANK()` cuando hay empate.

`dql/consultas.sql` recorre:

1. **`ROW_NUMBER() OVER (PARTITION BY destino_id ORDER BY costo_total DESC)`** — numera las reservas de cada destino de mayor a menor gasto, sin perder ninguna fila (a diferencia de un `GROUP BY`).
2. **Top-N por grupo** — el `ROW_NUMBER()` anterior metido en una CTE y filtrado por `puesto_en_destino = 1` da la reserva de mayor gasto de cada destino, un patron que `GROUP BY` no resuelve directamente.
3. **`RANK()` vs `DENSE_RANK()`** — con el empate en 1500.00: `RANK()` les da a ambos el puesto 17 y **salta** al 19 en la siguiente fila; `DENSE_RANK()` les da el puesto 16 y sigue con 17 sin saltos.
4. **`SUM() OVER (... ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)`** — acumulado (running total) de ingresos por destino, reserva por reserva en orden de fecha (ej. Cartagena: 1200 → 2700 → 3650 → 5400).
5. **`LAG()`** — compara la fecha de cada reserva con la fecha de la reserva anterior del mismo destino (`DATEDIFF`), y muestra `NULL` en la primera reserva de cada destino porque no hay una anterior con la que comparar.
6. **`AVG() OVER (PARTITION BY categoria)`** — compara cada reserva contra el promedio de su categoria de destino (`Playa`, `Montana`, `Cultural`, `Ciudad`) fila por fila, algo que un `GROUP BY` sencillo no puede hacer en una sola consulta sin perder el detalle.

## Archivos

- `ddl/schema.sql` — `destinos_turisticos` y `reservas_viaje` (con `FOREIGN KEY`).
- `dml/inserts.sql` — 8 destinos y 25 reservas, con un empate de costo a proposito.
- `dql/consultas.sql` — 6 consultas: `ROW_NUMBER`, top-N por grupo, `RANK`/`DENSE_RANK`, `SUM` acumulado, `LAG`, `AVG` por particion.
- `evidencias/resultados_consultas.txt` — salida real de las 6 consultas ejecutadas contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```
