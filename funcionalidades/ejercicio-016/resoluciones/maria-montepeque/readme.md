# Ejercicio 016 (funcionalidades) - maria-montepeque

Tematica: soldadura. Demuestra `JSON` con `proyectos_soldadura`: 8 proyectos reales con especificaciones detalladas + 300 filas de relleno para poder indexar un campo JSON de verdad.

## Que es

La columna `JSON` guarda un documento semiestructurado dentro de una fila normal. Sirve cuando distintos registros necesitan atributos distintos (aqui, cada proceso de soldadura — MIG, TIG, SMAW, FCAW — trae parametros diferentes) y forzarlos a columnas fijas dejaria la tabla llena de `NULL`.

## Como lo aplique

Cada proyecto guarda en `especificaciones` un documento con `proceso`, `material_base`, `espesor_mm`, `posicion`, un objeto `electrodo`, un array `certificaciones` y un array de objetos `pases_soldadura`.

`dql/consultas.sql` recorre:

1. **Extraer campos con `->>`** — saca `proceso`, `material_base` y `espesor_mm` como si fueran columnas normales.
2. **Filtrar por una ruta JSON en el `WHERE`** — `especificaciones ->> '$.proceso' = 'TIG'` encuentra los 2 proyectos soldados con TIG.
3. **`JSON_CONTAINS` sobre un array** — encuentra los 5 proyectos certificados bajo `'AWS D1.1'` sin tener que hacer `LIKE` sobre texto.
4. **`JSON_TABLE`** — convierte el array `pases_soldadura` de cada proyecto en filas normales (numero, amperaje, velocidad), como si fuera una tabla relacional aparte, para los 8 proyectos a la vez.
5. **`JSON_SET`** — agrega una clave `inspeccion` (con `aprobada` e `inspector`) al documento de un proyecto **sin reescribir** el resto de sus datos.
6. **Indexar un campo JSON** — esta es la parte central: un indice normal no puede apuntar directo a `especificaciones ->> '$.espesor_mm'`. Primero hay que crear una columna **generada** (`espesor_mm_gen`, definida en `ddl/schema.sql` a partir de esa misma ruta) y despues indexar la columna generada. El `EXPLAIN` lo confirma:
   - Filtrando por la ruta JSON cruda: `type=ALL`, `rows=308` (recorre toda la tabla, ningun indice puede ayudar aqui).
   - Filtrando por `espesor_mm_gen` **antes** de crear el indice: sigue `type=ALL`, `rows=308` (la columna existe pero todavia no esta indexada).
   - Filtrando por `espesor_mm_gen` **despues** de `CREATE INDEX`: `type=ref`, `rows=7` — de las 308 filas, solo 7 tienen `espesor_mm=33`.

## Archivos

- `ddl/schema.sql` — `proyectos_soldadura` con columna `JSON` y una columna generada `espesor_mm_gen` (sin indice todavia).
- `dml/inserts.sql` — 8 proyectos reales con JSON detallado + 300 filas de relleno (generadas con `WITH RECURSIVE`) para que el indice tenga sentido.
- `dql/consultas.sql` — 6 pasos: extraccion con `->>`, filtro por ruta JSON, `JSON_CONTAINS`, `JSON_TABLE`, `JSON_SET`, y el `EXPLAIN` antes/despues de indexar la columna generada.
- `evidencias/resultados_consultas.txt` — salida real de los 6 pasos ejecutados contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```

Nota: el paso 5 (`JSON_SET`) y el paso 6 (`CREATE INDEX`) modifican el estado de la base; si se corre `dql/consultas.sql` dos veces seguidas sin repetir `ddl/schema.sql` + `dml/inserts.sql` antes, el `CREATE INDEX` va a fallar porque el indice ya existe.
