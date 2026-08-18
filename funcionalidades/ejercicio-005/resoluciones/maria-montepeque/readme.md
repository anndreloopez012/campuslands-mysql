# Ejercicio 005 (funcionalidades) - maria-montepeque

Tematica: catalogo de peliculas de miedo. Demuestra `Indices` (indexes) con la tabla `peliculas_terror`, comparando el plan de ejecucion antes y despues de crearlos.

## Que es

Un indice es una estructura adicional (en InnoDB, un B-Tree) que MySQL mantiene junto a la tabla para no tener que revisar fila por fila cuando se filtra o se ordena por una columna. Tiene costo de escritura y espacio, pero acelera muchisimo las lecturas cuando la tabla es grande.

## Como lo aplique

- `ddl/schema.sql` crea `peliculas_terror` **sin ningun indice extra** (solo la `PRIMARY KEY`), a proposito, para poder medir el "antes".
- `dml/inserts.sql` inserta 12 peliculas reales y genera 1988 filas de relleno con una CTE recursiva, para un total de **2000 filas**. Solo 2 de esas 2000 tienen `director = 'Wes Craven'`, asi la diferencia de un indice se nota clarisimo en el plan de ejecucion.
- `dql/consultas.sql` compara `EXPLAIN` antes y despues de tres `CREATE INDEX`:
  1. `idx_director` sobre `director` — acelera un filtro por igualdad.
  2. `idx_calificacion` sobre `calificacion` — acelera un `ORDER BY`.
  3. `idx_subgenero_calificacion` (compuesto) sobre `(subgenero, calificacion)` — acelera un filtro y un `ORDER BY` en una sola pasada de indice.

## Que se observo (antes vs despues)

| Consulta | Antes (sin indice) | Despues (con indice) |
|---|---|---|
| `WHERE director = 'Wes Craven'` | `type=ALL`, `rows=2000` (recorre toda la tabla) | `type=ref`, `key=idx_director`, `rows=2` |
| `ORDER BY calificacion DESC LIMIT 10` | `type=ALL`, `Extra=Using filesort` (ordena en memoria/disco) | `type=index`, `Extra=Backward index scan` (usa el indice ya ordenado, sin filesort) |
| `WHERE subgenero='Slasher' ORDER BY calificacion DESC` | (no se probo sin indice, se resolveria igual que la fila 1: `ALL` + filesort) | `type=ref`, `key=idx_subgenero_calificacion`, `rows=252`, `Extra=Backward index scan` — filtra y ordena con el mismo indice |

`SHOW INDEX FROM peliculas_terror` al final confirma los 4 indices existentes (`PRIMARY` + los 3 creados) con su `Cardinality` despues de `ANALYZE TABLE`.

## Archivos

- `ddl/schema.sql` — tabla `peliculas_terror` sin indices secundarios.
- `dml/inserts.sql` — 12 peliculas reales + 1988 filas generadas con `WITH RECURSIVE`, total 2000 filas.
- `dql/consultas.sql` — `EXPLAIN` antes de indexar, creacion de 3 indices, `EXPLAIN` despues, indice compuesto y `SHOW INDEX`.
- `evidencias/resultados_consultas.txt` — salida real de los 7 pasos ejecutados contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```
