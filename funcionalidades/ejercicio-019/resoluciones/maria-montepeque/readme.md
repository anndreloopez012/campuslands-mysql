# Ejercicio 019 (funcionalidades) - maria-montepeque

Tematica: videojuego de accion y aventura. Demuestra `Backup y restore` (`mysqldump` + restauracion) con `partidas_guardadas` (5 saves) y `objetos_recolectados` (10 items).

## Que es

`mysqldump` genera un archivo `.sql` con la estructura y/o los datos de una base de datos, tal como quedarian si se ejecutaran esas sentencias desde cero. Ese archivo es el backup; "restaurar" es simplemente volver a ejecutarlo (`mysql < backup.sql`) sobre una base vacia o danada.

## Como lo aplique

`Backup y restore` no es SQL puro, se maneja desde la terminal. `dql/consultas.sql` documenta la secuencia completa: los comandos de `mysqldump`/restauracion quedan como comentario justo donde ocurren, y las consultas SQL (los `COUNT`, `SHOW TABLES`) validan el resultado en cada paso. La secuencia real, ejecutada de verdad:

1. **Estado inicial** — 5 partidas, 10 objetos.
2. **Backup completo** — `mysqldump ... campuslands_mysql partidas_guardadas objetos_recolectados > evidencias/backup_completo.sql` (estructura + datos de las 2 tablas, 85 lineas).
3. **Desastre simulado** — `DROP TABLE` de las 2 tablas (como si el save se hubiera corrompido).
4. **Confirmacion** — `SHOW TABLES` no devuelve nada: las tablas de verdad ya no existen.
5. **Restore** — `mysql ... campuslands_mysql < evidencias/backup_completo.sql` recrea las tablas y reinserta los datos leyendo el backup del paso 2.
6. **Verificacion final** — de nuevo 5 partidas y 10 objetos, con los mismos jugadores, niveles y ubicaciones que en el paso 1. La restauracion fue exacta.
7. **Backup parcial con `--where`** — `mysqldump --where="jugador='Kaelen Voss'" ... partidas_guardadas` genera un backup con solo las 2 partidas de ese jugador (ids 1 y 4), util para "exportar mi propio progreso" sin llevarse toda la tabla.
8. **Backup de solo estructura con `--no-data`** — genera un `.sql` con los `CREATE TABLE` pero cero sentencias `INSERT`, util para clonar el esquema del juego en otro ambiente sin arrastrar partidas reales.

## Archivos

- `ddl/schema.sql` — `partidas_guardadas` y `objetos_recolectados` (con `FOREIGN KEY`).
- `dml/inserts.sql` — 5 partidas guardadas y 10 objetos recolectados.
- `dql/consultas.sql` — documenta la secuencia de 8 pasos (SQL de verificacion + comandos de `mysqldump`/restore comentados donde van).
- `evidencias/resultados_consultas.txt` — salida real de los 8 pasos, incluyendo los comandos de shell ejecutados.
- `evidencias/backup_completo.sql` — el backup real generado en el paso 2 (el que se uso para restaurar en el paso 5).
- `evidencias/backup_solo_kaelen.sql` — el backup parcial del paso 7.
- `evidencias/backup_solo_estructura.sql` — el backup de solo estructura del paso 8.

## Ejecutar

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < ddl/schema.sql
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < dml/inserts.sql

# Backup completo
docker exec -i campuslands-mysql-db mysqldump -u campus -pcampus123 --no-tablespaces \
  campuslands_mysql partidas_guardadas objetos_recolectados > evidencias/backup_completo.sql

# Simular desastre y restaurar
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql \
  -e "DROP TABLE objetos_recolectados; DROP TABLE partidas_guardadas;"
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < evidencias/backup_completo.sql
```

Nota: `--no-tablespaces` evita una advertencia de `mysqldump` sobre el privilegio `PROCESS` (el usuario `campus` no lo tiene y no lo necesita para este backup).
