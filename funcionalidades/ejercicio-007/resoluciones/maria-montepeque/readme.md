# Ejercicio 007 (funcionalidades) - maria-montepeque

Tematica: biblioteca gamer. Demuestra `JOINs` con `jugadores_gamer` (8 jugadores) y `juegos_biblioteca` (14 juegos), cubriendo `INNER JOIN`, `LEFT JOIN`, el patron anti-join, `RIGHT JOIN` y `SELF JOIN`.

## Que es

Un `JOIN` combina filas de dos (o mas) tablas relacionadas usando una condicion de union. El tipo de `JOIN` que se elige determina que pasa con las filas que **no** tienen pareja del otro lado: se descartan, se muestran con `NULL`, o se conservan todas.

## Como lo aplique

Los datos se disenaron con casos limite a proposito:

- `ZenithArc` (jugador 8) no tiene ningun juego en su biblioteca.
- Dos juegos (`Cronicas del Abismo`, `Vuelo Cero`) tienen `jugador_id = NULL`: son una "lista de deseos" sin dueno todavia.
- Cuatro jugadores tienen `referido_por` apuntando a otro jugador de la misma tabla (autorreferencia), para poder hacer un `SELF JOIN`.

`dql/consultas.sql` recorre:

1. **`INNER JOIN`** — solo jugadores con juegos y juegos con jugador. `ZenithArc` y los 2 juegos sin dueno no aparecen (12 filas).
2. **`LEFT JOIN`** — aparecen los 8 jugadores. `ZenithArc` sale una vez con `titulo` y `horas_jugadas` en `NULL` (13 filas).
3. **`LEFT JOIN` + `WHERE ... IS NULL`** (anti-join) — filtra el resultado anterior a solo los jugadores sin juegos: devuelve unicamente `ZenithArc`.
4. **`RIGHT JOIN`** — aparecen los 14 juegos, incluidos los 2 de la lista de deseos, con `alias`/`jugador_id` en `NULL`.
5. **`SELF JOIN`** — la tabla `jugadores_gamer` se une consigo misma (`referido.referido_por = mentor.id`) para listar los 4 pares invito/fue_invitado.

## Archivos

- `ddl/schema.sql` — `jugadores_gamer` (con autorreferencia `referido_por`) y `juegos_biblioteca` (con `jugador_id` nullable).
- `dml/inserts.sql` — 8 jugadores y 14 juegos, con los casos limite descritos arriba.
- `dql/consultas.sql` — 5 consultas: `INNER JOIN`, `LEFT JOIN`, anti-join, `RIGHT JOIN`, `SELF JOIN`.
- `evidencias/resultados_consultas.txt` — salida real de las 5 consultas ejecutadas contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```
