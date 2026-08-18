# Ejercicio 006 (funcionalidades) - maria-montepeque

Tematica: saga de ciencia ficcion. Demuestra `EXPLAIN` (y variantes) para leer el plan de ejecucion de distintos tipos de consulta, con las tablas `sagas_ciencia_ficcion` (8 filas) y `entregas_saga` (37 peliculas, `FOREIGN KEY` hacia la saga).

## Que es

`EXPLAIN` le pide a MySQL que muestre **como** va a resolver una consulta (que tabla recorre primero, si usa un indice, cuantas filas espera revisar) sin necesariamente ejecutarla. `EXPLAIN ANALYZE` si la ejecuta y agrega los tiempos y filas **reales**, no solo estimados.

## Como lo aplique

`dql/consultas.sql` recorre distintas formas de leer un plan de ejecucion, todas contra las mismas tablas:

1. **Filtro simple sin indice** (`WHERE anio_estreno = 1984`) — `type=ALL`, `rows=37` (recorre toda la tabla).
2. Se crea `idx_anio_estreno` y se repite la consulta — `type=ref`, `rows=3`: MySQL ahora usa el indice en vez de revisar las 37 filas.
3. **EXPLAIN de un JOIN** — el resultado trae **una fila por tabla** del plan. Aqui `entregas_saga` es la tabla conductora (`type=ALL`, con `Using filesort` porque ordena por `anio_estreno`) y `sagas_ciencia_ficcion` se resuelve con `type=eq_ref` sobre su `PRIMARY KEY` (una fila exacta por cada vuelta, porque `id` es unico).
4. **Subconsulta `IN` vs `JOIN` equivalente** — ambas EXPLAIN dan el mismo plan (`select_type=SIMPLE` en las dos, ninguna aparece como `SUBQUERY` aparte): el optimizador "aplana" el `IN (SELECT ...)` en un semi-join, no lo ejecuta como una subconsulta independiente por cada fila.
5. **`EXPLAIN FORMAT=TREE`** — el mismo plan pero en forma de arbol, con el costo **estimado** (`cost=...`, `rows=...`) de cada paso: escaneo de `sagas_ciencia_ficcion`, filtro por `universo`, hash join contra `entregas_saga`, orden final.
6. **`EXPLAIN ANALYZE`** de la misma consulta — el arbol es igual, pero cada nodo ahora tiene `actual time=...` y `rows=...` **reales**, medidos al ejecutarla de verdad. Por ejemplo el nodo raiz reporta `rows=21` reales (las peliculas de sagas "Space Opera"), que se puede comparar contra el `rows` estimado del `FORMAT=TREE` del paso anterior.

## Archivos

- `ddl/schema.sql` — `sagas_ciencia_ficcion` y `entregas_saga` (con `FOREIGN KEY`), sin indice extra en `anio_estreno` al inicio.
- `dml/inserts.sql` — 8 sagas y 37 peliculas (cifras de taquilla ilustrativas, no oficiales).
- `dql/consultas.sql` — 7 pasos: `EXPLAIN` antes/despues de indexar, `EXPLAIN` de un `JOIN`, `IN` vs `JOIN`, `FORMAT=TREE` y `EXPLAIN ANALYZE`.
- `evidencias/resultados_consultas.txt` — salida real de los 7 pasos ejecutados contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```
