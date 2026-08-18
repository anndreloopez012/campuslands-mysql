# Ejercicio 007 - Normalización 2FN para liga de fútbol

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se aplicó la Segunda Forma Normal (2FN) separando las entidades `equipos`, `jugadores` y `participaciones`.
- La tabla `participaciones` almacena únicamente los datos que dependen de la relación entre un jugador y un equipo durante una temporada.
- Se implementaron restricciones `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `DEFAULT`, `UNIQUE` y `CHECK`.
- Se insertaron ocho registros de participación para validar consultas y relaciones.
- Las consultas utilizan `JOIN`, `GROUP BY`, `SUM`, `AVG` y `COUNT` para generar reportes deportivos.