# Ejercicio 010 - Backup lógico

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.
4. Ejecutar `backup/backup.sh` para generar el respaldo.
5. Ejecutar `backup/restaurar.sh` para restaurar la base de datos.
6. Volver a ejecutar las consultas para verificar la información restaurada.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se crearon las tablas `corredores` y `resultados` relacionadas mediante una clave foránea.
- Se insertaron ocho registros de prueba con información realista.
- Se implementaron scripts para generar y restaurar un respaldo lógico utilizando `mysqldump` y `mysql`.
- Se incluyeron consultas para validar la integridad de la información antes y después de la restauración.
- Se utilizaron restricciones `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL` y `UNIQUE`.