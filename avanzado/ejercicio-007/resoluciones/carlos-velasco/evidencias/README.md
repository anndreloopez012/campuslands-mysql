# Ejercicio 007 - Vistas avanzadas para liga de fútbol

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se diseñó un modelo relacional compuesto por las tablas `equipos`, `jugadores` y `participaciones`.
- Se crearon las vistas `vw_tabla_goleadores` y `vw_resumen_equipos` para reutilizar consultas complejas.
- Las vistas encapsulan operaciones con `JOIN`, `SUM` y `COUNT`, facilitando la generación de reportes.
- Se implementaron restricciones `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `DEFAULT`, `UNIQUE` y `CHECK`.
- Se insertaron ocho registros de participación con datos deportivos realistas.
- Las consultas demuestran cómo utilizar vistas para obtener información sin repetir lógica SQL.