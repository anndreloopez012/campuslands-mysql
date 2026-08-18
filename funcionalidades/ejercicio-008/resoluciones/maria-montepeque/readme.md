# Ejercicio 008 (funcionalidades) - maria-montepeque

Tematica: restaurante de comida urbana. Demuestra `Subconsultas` con `platos_menu` (14 platos) y `pedidos_urbanos` (25 pedidos que cubren 12 de los 14 platos).

## Que es

Una subconsulta es un `SELECT` dentro de otra consulta, usado para calcular un valor o filtrar filas antes de que la consulta externa las use. Puede ir en el `SELECT`, en el `WHERE`, o en el `FROM` (como tabla derivada), y puede ser independiente o **correlacionada** (referenciar columnas de la consulta externa y volver a ejecutarse por cada fila).

## Como lo aplique

Los datos se disenaron para que cada tipo de subconsulta tenga un resultado distinto y verificable:

- `Agua de Pepino y Menta` y `Flan de Cajeta` quedan **sin ningun pedido** a proposito (para las subconsultas de platos nunca vendidos).
- El precio promedio general es `5.13`; 6 de los 14 platos quedan por encima (todas las hamburguesas y bowls).
- Los promedios por categoria son distintos entre si, para que la subconsulta correlacionada del paso 3 no de el mismo resultado que la del paso 2.

`dql/consultas.sql` recorre:

1. **Subconsulta escalar en el `SELECT`** — cada fila trae el precio promedio general junto a su propio precio (la subconsulta devuelve un unico valor, se recalcula pero no cambia por fila).
2. **Subconsulta en el `WHERE`** — solo platos con `precio > (SELECT AVG(precio) FROM platos_menu)`. 6 resultados.
3. **Subconsulta correlacionada** — cada plato se compara contra el promedio de **su propia categoria** (`WHERE pm.categoria = p.categoria`), no el promedio general. Da un resultado distinto al del paso 2 (un plato por categoria, salvo hamburguesas con 2).
4. **Subconsulta con `IN`** — los 12 platos que aparecen en `pedidos_urbanos`.
5. **Subconsulta con `NOT EXISTS`** — los 2 platos que nunca se pidieron. Se prefiere `NOT EXISTS` sobre `NOT IN` porque `NOT IN` deja de funcionar (sin avisar) si la subconsulta llegara a devolver algun `NULL`.
6. **Subconsulta con `EXISTS`** — misma idea que el `IN` del paso 4, escrita de forma correlacionada; da exactamente los mismos 12 platos.
7. **Subconsulta en el `FROM` (tabla derivada)** — agrupa ventas por plato en una subconsulta (`SUM(cantidad)`, con otra subconsulta escalar adentro para el precio), y el resultado se une con `platos_menu` para sacar el top 3 por ingresos: `Taco al Pastor` (45.50), `Burger BBQ Ahumada` (43.75), `Burger Doble Smash` (27.75).

## Archivos

- `ddl/schema.sql` — `platos_menu` y `pedidos_urbanos` (con `FOREIGN KEY`).
- `dml/inserts.sql` — 14 platos y 25 pedidos.
- `dql/consultas.sql` — 7 subconsultas: escalar, `WHERE` con comparacion, correlacionada, `IN`, `NOT EXISTS`, `EXISTS`, y tabla derivada en el `FROM`.
- `evidencias/resultados_consultas.txt` — salida real de las 7 consultas ejecutadas contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```
