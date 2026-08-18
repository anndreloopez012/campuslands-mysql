# Ejercicio 014 (funcionalidades) - maria-montepeque

Tematica: animacion 3D. Demuestra `Triggers` con `proyectos_animacion` (4 proyectos), `renders_frames` (12 frames) y `auditoria_proyectos` (tabla de log).

## Que es

Un trigger es codigo que MySQL ejecuta **solo** cuando pasa un `INSERT`, `UPDATE` o `DELETE` sobre una tabla, sin que nadie lo llame directamente. Sirve para mantener datos derivados al dia, bloquear cambios que rompen una regla de negocio, o dejar un registro de auditoria de lo que cambio.

## Como lo aplique

`ddl/schema.sql` crea 5 triggers:

1. **`trg_frames_after_insert`** (`AFTER INSERT` en `renders_frames`) — suma el costo del frame nuevo y sube el contador en `proyectos_animacion`. `gasto_actual` y `total_frames` nunca se escriben a mano, los mantiene el trigger.
2. **`trg_frames_after_delete`** (`AFTER DELETE` en `renders_frames`) — el complemento: resta el costo y baja el contador cuando se borra un frame (usa `OLD` porque la fila ya no existe).
3. **`trg_proyecto_before_update`** (`BEFORE UPDATE` en `proyectos_animacion`) — bloquea con `SIGNAL` cualquier intento de bajar `presupuesto` por debajo de lo que ya se gasto (`gasto_actual`).
4. **`trg_proyecto_after_update`** (`AFTER UPDATE` en `proyectos_animacion`) — compara `OLD` vs `NEW` y solo si `estado` o `presupuesto` de verdad cambiaron, inserta una fila en `auditoria_proyectos`.
5. **`trg_proyecto_before_delete`** (`BEFORE DELETE` en `proyectos_animacion`) — regla de negocio (no de integridad referencial, esa ya la cubre la `FOREIGN KEY ... ON DELETE CASCADE`): no se puede borrar un proyecto que sigue `'produccion'`.

`dql/consultas.sql` recorre:

1. Los 12 `INSERT` de `dml/inserts.sql` ya dejaron `gasto_actual`/`total_frames` correctos en los 4 proyectos, gracias al trigger 1.
2. Un `INSERT` nuevo, en vivo, sobre `Mundo de Cristal`: sus totales suben de `510.75`/`4` a `644.00`/`5` sin tocar `proyectos_animacion`.
3. Un `DELETE` de un frame de `Aventura Estelar`: sus totales bajan de `616.00`/`6` a `516.50`/`5`.
4. Dos `UPDATE` validos (subir presupuesto de `Cortometraje Eco`, cambiar estado de `Mundo de Cristal`) quedan registrados en `auditoria_proyectos` con el valor anterior y el nuevo.
5. Un `DELETE` permitido: `Cortometraje Eco` esta `'pausado'` (no `'produccion'`), asi que pasa el trigger 5, y el `ON DELETE CASCADE` de la `FOREIGN KEY` borra tambien sus 2 `renders_frames` — se confirma con un `COUNT(*) = 0`.
6. Dos sentencias que **deben fallar**: bajar el presupuesto de `Aventura Estelar` por debajo de lo gastado (`ERROR 1644`, trigger 3), y borrar `Aventura Estelar` mientras sigue `'produccion'` (`ERROR 1644`, trigger 5).

## Archivos

- `ddl/schema.sql` — `proyectos_animacion`, `renders_frames` (FK `ON DELETE CASCADE`), `auditoria_proyectos` y los 5 triggers.
- `dml/inserts.sql` — 4 proyectos y 12 frames.
- `dql/consultas.sql` — 5 pasos que disparan los triggers en vivo + 2 sentencias comentadas que deben fallar.
- `evidencias/resultados_consultas.txt` — salida real de los 5 pasos y de las 2 pruebas de fallo, ejecutadas contra MySQL en Docker.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dql/consultas.sql
```

Nota: el script de `dql/consultas.sql` **no es idempotente** (inserta, borra y actualiza), asi que si se corre dos veces seguidas sin repetir `ddl/schema.sql` + `dml/inserts.sql`, el resultado (y las 2 sentencias que deben fallar) van a diferir de `evidencias/resultados_consultas.txt`.
