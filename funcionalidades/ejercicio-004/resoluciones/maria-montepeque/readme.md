# Ejercicio 004 (funcionalidades) - maria-montepeque

Tematica: playlist musical. Demuestra `AUTO_INCREMENT` con la tabla `canciones_playlist`.

## Que es

`AUTO_INCREMENT` hace que MySQL genere solo el valor de una columna (normalmente la clave primaria) cada vez que se inserta una fila sin indicarlo explicitamente. El contador es interno de la tabla, no se calcula con `MAX(id) + 1` en cada insert, y se puede leer o modificar manualmente.

## Como lo aplique

- `canciones_playlist.id` — `INT AUTO_INCREMENT PRIMARY KEY`. Los 8 inserts iniciales no indican `id`; MySQL asigna 1 al 8 en orden.
- `dql/consultas.sql` recorre el comportamiento completo de la funcionalidad:
  1. Confirma la asignacion secuencial inicial (1-8).
  2. Inserta una novena cancion y usa `LAST_INSERT_ID()` para leer el id que MySQL genero para esa conexion.
  3. Consulta `information_schema.TABLES` para ver el contador interno (`10`) antes de borrar nada.
  4. Borra la cancion con `id = 3` e inserta una nueva: el nuevo registro recibe `id = 10`, **no** reutiliza el `3` que quedo libre. Esto demuestra que `AUTO_INCREMENT` nunca reusa valores por un `DELETE`.
  5. `ALTER TABLE canciones_playlist AUTO_INCREMENT = 100` reserva un bloque de ids para una "Temporada 2" de la playlist; el siguiente insert recibe `id = 100`.
  6. Un insert adicional sin indicar id confirma que el contador sigue de forma normal desde ahi (`101`), no vuelve al valor anterior.

## Observacion durante la evidencia

Al consultar `information_schema.TABLES.AUTO_INCREMENT` inmediatamente despues del `ALTER TABLE ... AUTO_INCREMENT = 100`, MySQL devolvio un valor cacheado (`10`) en vez de `100`. Es un comportamiento conocido de esa vista en MySQL 8: el contador real ya estaba en `100` (lo confirma que el insert siguiente tomo justo ese id), pero la fila de `information_schema` no siempre se refresca al instante despues de un `ALTER TABLE` en la misma sesion. Por eso la validacion final del paso 6 se hace con un insert real y no solo con `information_schema`.

## Archivos

- `ddl/schema.sql` — tabla `canciones_playlist` con `AUTO_INCREMENT PRIMARY KEY`.
- `dml/inserts.sql` — 8 canciones de la "Temporada 1", todas sin id explicito.
- `dql/consultas.sql` — 6 pasos que recorren asignacion secuencial, `LAST_INSERT_ID()`, lectura del contador, comportamiento tras un `DELETE`, y `ALTER TABLE ... AUTO_INCREMENT` para saltar a un bloque de ids.
- `evidencias/resultados_consultas.txt` — salida real de los 6 pasos ejecutados contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```
