# Ejercicio 011 (funcionalidades) - maria-montepeque

Tematica: paracaidismo. Demuestra `Vistas` con `paracaidistas` (8 personas) y `saltos_paracaidismo` (18 saltos).

## Que es

Una vista (`CREATE VIEW`) es una consulta guardada con nombre que se usa como si fuera una tabla. Sirve para no repetir el mismo `JOIN` o `GROUP BY` en cada reporte, para exponer solo cierta parte de los datos, y en algunos casos incluso permite `UPDATE`/`INSERT` a traves de ella hacia la tabla real.

## Como lo aplique

`dql/consultas.sql` recorre 6 usos distintos de vistas, mas 2 sentencias que deben fallar a proposito:

1. **Vista de reporte basica** (`vista_saltos_detalle`) — `JOIN` de las dos tablas guardado con nombre.
2. **Vista con agregacion** (`vista_resumen_paracaidistas`) — `COUNT`/`AVG` por paracaidista con `GROUP BY`, para un reporte fijo.
   - **Contraste directo**: un `UPDATE` a traves de `vista_saltos_detalle` (JOIN simple, sin agregar) **si funciona** porque la columna que se cambia (`zona`) pertenece a una sola tabla base. Un `UPDATE` a traves de `vista_resumen_paracaidistas` (con `GROUP BY`) **falla** con `ERROR 1288` porque `total_saltos` es una columna calculada, no una columna real.
3. **Vista sobre otra vista** (`vista_saltos_altos`) — se define como `SELECT * FROM vista_saltos_detalle WHERE altitud_metros >= 4000`, encadenando vistas en vez de repetir el `JOIN` original.
4. **Vista actualizable** (`vista_paracaidistas_activos`) — una vista de una sola tabla sin agregacion; el `UPDATE` hecho a traves de ella cambia de verdad la tabla `paracaidistas`.
5. **Vista con `WITH CHECK OPTION`** (`vista_paracaidistas_licencia_a`) — solo expone paracaidistas con `licencia = 'A'`. Un `UPDATE` que los deje **dentro** del filtro se permite; un `UPDATE` que los saque del filtro (cambiar la licencia a `'D'`) es **rechazado** por MySQL con `ERROR 1369`.
6. **Introspeccion** — `SHOW CREATE VIEW` muestra la definicion guardada de una vista, e `information_schema.views.IS_UPDATABLE` confirma cuales de las 5 vistas creadas aceptan `UPDATE` y cuales no (todas menos la que tiene `GROUP BY`).

## Que se observo (resumen)

| Vista | Tiene agregacion / GROUP BY | IS_UPDATABLE |
|---|---|---|
| `vista_saltos_detalle` | No (solo JOIN) | YES |
| `vista_resumen_paracaidistas` | Si | NO |
| `vista_saltos_altos` | No (filtro sobre otra vista) | YES |
| `vista_paracaidistas_activos` | No (una tabla) | YES |
| `vista_paracaidistas_licencia_a` | No (una tabla + WHERE + CHECK OPTION) | YES |

## Archivos

- `ddl/schema.sql` — `paracaidistas` y `saltos_paracaidismo` (con `FOREIGN KEY`).
- `dml/inserts.sql` — 8 paracaidistas y 18 saltos.
- `dql/consultas.sql` — 6 pasos con vistas (reporte, agregacion + contraste de UPDATE, vista sobre vista, vista actualizable, `WITH CHECK OPTION`, introspeccion) + 2 sentencias comentadas que deben fallar.
- `evidencias/resultados_consultas.txt` — salida real de los 6 pasos y de las 2 pruebas de fallo, ejecutadas contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```

Nota: las 2 sentencias que deben fallar (al final de `dql/consultas.sql`, comentadas) hay que ejecutarlas por separado, como se hizo para generar `evidencias/resultados_consultas.txt`.
