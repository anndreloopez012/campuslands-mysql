# Ejercicio 008 - Normalización 3FN para fútbol sala

## Ejecución

1. Ejecutar `ddl/schema.sql`.
2. Ejecutar `dml/inserts.sql`.
3. Ejecutar `dql/consultas.sql`.

## Decisiones técnicas

- Se utilizó la base de datos `campuslands_mysql`.
- Se aplicó la Tercera Forma Normal (3FN) separando las entidades `ciudades`, `equipos`, `jugadores` y `estadisticas_jugadores`.
- La información geográfica se almacena en una tabla independiente para eliminar dependencias transitivas.
- Las estadísticas deportivas se encuentran desacopladas de los datos personales de los jugadores.
- Se implementaron restricciones `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `DEFAULT`, `UNIQUE` y `CHECK`.
- Se insertaron ocho jugadores con estadísticas deportivas realistas.
- Las consultas utilizan `JOIN`, `SUM`, `AVG` y `COUNT` para validar el modelo normalizado.